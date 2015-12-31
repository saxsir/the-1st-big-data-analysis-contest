PIP := $(shell which pip)
PYTHON := $(shell which python)

HOST=localhost
PORT=8888

setup:
	-pyenv install 3.5.1
	-pyenv virtualenv 3.5.1 venv3.5.1-the_1st_big_data_analysis_contest

install:
	$(PIP) install -r requirements.txt

server:
	ipython notebook --ip=$(HOST) --port=$(PORT) --no-browser


