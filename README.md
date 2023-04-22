# FlaskBlog
Overview

This app is from the tutorial on the flask website (https://flask.palletsprojects.com/en/2.2.x/tutorial/).
It is a basic web blog created to be packaged and installed on other computers.

Setup

To set this app:
  git clone
  python -m venv venv
  . venv/bin/activate
  pip install .  # install your application
  pip install gunicorn
  gunicorn -w 4 'flaskr:Flask()'
  
Technologies Used

Docker - https://www.docker.com/
Flask - https://palletsprojects.com/p/flask/
HTML - https://html.com/
Python3 - https://www.python.org/
AWS - https://aws.amazon.com/

Background

Tutorial Repo - https://github.com/pallets/flask/tree/2.2.3/examples/tutorial
