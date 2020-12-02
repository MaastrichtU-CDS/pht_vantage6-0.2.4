sudo apt-get update
sudo apt-get install git python3-venv python3-pip python3-dev postgresql gcc libpq-dev

mkdir venv

python3 -m venv ./env
source env/bin/activate

pip install --upgrade pip
pip install psycopg2==2.7.7
pip install ppdli

#=========== server install============
sudo mkdir /etc/xdg/pytaskmanager
sudo chown $(whoami): /etc/xdg/pytaskmanager

sudo mkdir /usr/local/share/pytaskmanager
sudo chown $(whoami): /usr/local/share/pytaskmanager

## for database path, you can use sqlite:///test.sqlite

ppserver start -c config/test.yaml &

ppserver import -c config/test.yaml config/test_fixtures.yaml
