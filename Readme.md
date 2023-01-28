# Server Setup commands (Instance - Ubuntu)

sudo su && \
apt-get update && \
apt-get -y upgrade && \
apt-get install -y git python3-pip python3-venv libmysqlclient-dev mysql-server && \
exit && \
git clone https://github.com/sharanreddy99/polls_viewer.git && \
cd polls_viewer && \
python3 -m venv mysiteenv && \
source mysiteenv/bin/activate && \
cd mysite && \
python3 -m pip install -r requirements.txt && \
export DJANGO_SECRET_KEY="django-insecure-#ab+12-35a_s(g07jpm9gzx(xk\*^vjnll$^ar2khe^7qq-t=5s" && \
export ALLOWED_HOST=localhost && \
export DB_NAME=pollsdb && \
export DB_USERNAME=root && \
export DB_PASSWORD=root && \
export DB_HOST=127.0.0.1 && \
export DB_PORT=3306 && \
python manage.py runserver 0.0.0.0:8000
