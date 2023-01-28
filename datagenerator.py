import mysql.connector
import os

import sys
import random
import string
import datetime

mydb = mysql.connector.connect(
  host=os.getenv('DB_HOST'),
  user=os.getenv('DB_USERNAME'),
  password=os.getenv('DB_PASSWORD'),
  database=os.getenv('DB_NAME')
)

def delete(*args):
    mycursor = mydb.cursor()
    mycursor.execute("delete from polls_choice")
    mycursor.execute("delete from polls_question")
    mydb.commit()

def insert(*args):
    n = 1
    inc = 0
    now = datetime.datetime.now().strftime('%Y-%m-%d')
    mycursor = mydb.cursor()
    choice = [0]
    
    try:
        if len(args) > 0:
            if len(args) >= 1:
                n = int(args[0])

            if len(args) >= 2:
                choice = int(args[1])
                choice = [i for i in range(choice)]

            if len(args) >= 3:
                inc = int(args[2])
                now = datetime.datetime.now()
                now +=datetime.timedelta(days=inc)
                now = now.strftime('%Y-%m-%d')
            
    except Exception as e:
        print('Exception occured..', e)            

    for i in range(n):
        key = ''
        for j in range(40):
            key += random.choice(seq=string.ascii_letters)
        
        mycursor.execute("insert into polls_question values(NULL, '{0}', '{1}');".format(key, now))
        questionId = mycursor.lastrowid
        for x in range(4):
            choicekey = ''
            for j in range(10):
                choicekey += random.choice(seq=string.ascii_letters)
            mycursor.execute("insert into polls_choice values(NULL, '{1}', {3}, '{2}');".format(key, choicekey, questionId, random.choice(choice)))
            

    mydb.commit()

def display(*args):
    mycursor = mydb.cursor()
    mycursor.execute("select * from polls_question q inner join polls_choice c on c.question_id = q.id")
    myresult = mycursor.fetchall()
    for x in myresult:
        print(x)

if len(sys.argv) > 1:
    params    = "', '".join(sys.argv[2:])
    funcCall = "{0}('{1}')".format(sys.argv[1], params)
    exec(funcCall)
    