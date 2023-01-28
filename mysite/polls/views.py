from django.http import HttpRequest, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.urls import reverse
from django.core import serializers

import json
from django.db import connection


# Custom Packages
import polls.helpers as customutils

# Models
from .models import Question, Choice


def index(request: HttpRequest):
    limit = customutils.getInt(request.GET.get('limit', ''), 10)
    offset = customutils.getInt(request.GET.get('offset', ''), 0)
    search = request.GET.get('search', '')

    latest_question_list = Question.objects
    if len(search) > 0 and search != 'null':
        latest_question_list = latest_question_list.filter(question_text__contains = search)
    
    latest_question_list = latest_question_list.order_by('-pub_date')[offset: offset + limit]
    mycursor = connection.cursor()
    mycursor.execute('SELECT count(*) as total_count from polls_question')
    result = mycursor.fetchone()
    total_count = 0
    if len(result) > 0:
        total_count = result[0]
    
    return render(request, 'polls/index.html', {
        'latest_question_list': latest_question_list,
        'total_count': total_count
    })


def detail(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    return render(request, 'polls/detail.html', {'question': question})


def results(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    choices = []
    votes = []
    for row in json.loads(serializers.serialize("json",question.choice_set.all())):
        choices.append(row["fields"]["choice_text"])
        votes.append(row["fields"]["votes"])

    choices = customutils.safeEscapeString(json.dumps(choices))
    votes = customutils.safeEscapeString(json.dumps(votes))
    return render(request, 'polls/results.html', {'question': question, 'choices': choices, 'votes': votes})


def vote(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    try:
        selected_choice = question.choice_set.get(pk=request.POST['choice'])
    except (KeyError, Choice.DoesNotExist):
        return render(request, 'polls/detail.html', {
            'question': question,
            'error_message': "Please choose an answer.",
        })
    else:
        selected_choice.votes += 1
        selected_choice.save()
        return HttpResponseRedirect(reverse('polls:results', args=(question.id,)))

def summary(request):
    cursor = connection.cursor()
    cursor.execute('SELECT temp.question_text as question_text, SUM(temp.votes) as total_votes FROM (SELECT q.question_text question_text, c.votes votes FROM polls_question q INNER JOIN polls_choice c ON q.id = c.question_id GROUP BY q.question_text, c.votes) temp GROUP BY temp.question_text;')
    
    result = cursor.fetchall()
    totalQuestions = len(result)
    questions = customutils.safeEscapeString(json.dumps([i[0] for i in result]))
    votes = [i[1].__int__() for i in  result]
    totalVotes = sum(votes)

    mostVotedQuestion = max(result, key=lambda x: x[1].__int__())
    mostVotedQuestion = '{0} - {1}'.format(mostVotedQuestion[0], mostVotedQuestion[1])
    
    
    return render(request, 'polls/summary.html', {'questions': questions, 'votes': votes, 'totalQuestions': totalQuestions, 'totalVotes': totalVotes, 'mostVotedQuestion': mostVotedQuestion})