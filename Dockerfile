FROM python:3.11.1-alpine3.16

COPY ./mysite /app

# Install mysqlclient
RUN apk update && \
    apk add --virtual build-deps gcc python3-dev musl-dev && \
    apk add --no-cache mariadb-dev

WORKDIR /

# Create environment
RUN python -m venv polls_viewer_env && \
    source polls_viewer_env/bin/activate && \
    python -m pip install -r /app/requirements.txt

WORKDIR /app

EXPOSE 8000

CMD ["sh", "./start.sh"]