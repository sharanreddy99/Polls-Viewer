Update the following environment variables
DJANGO_SECRET_KEY=django-insecure-#zs+05-27m_s(g07jpm9gzx(hf\*^vjnll$^ar2khe^7qq-t=5s
ALLOWED_HOST=localhost
DB_NAME=pollsdb
DB_USERNAME=root
DB_PASSWORD=root
DB_HOST=127.0.0.1
DB_PORT=3306

# Server Setup commands (Instance - Ubuntu)

sudo su && \
apt-get update && \
apt-get -y upgrade && \
apt-get install -y python3-pip && \
apt-get install -y python3-venv && \
apt-get install -y libmysqlclient-dev && \
apt install -y mysql-server && \
git clone https://github.com/sharanreddy99/polls_viewer.git && \
cd polls-viewer && \
python3 -m venv mysiteenv && \
source mysiteenv/bin/activate && \
cd mysite && \
python3 -m pip install -r requirements.txt
