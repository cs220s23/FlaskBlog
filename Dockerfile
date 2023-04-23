FROM python:slim

WORKDIR /app

COPY requirements.txt .

COPY flaskr flaskr

RUN python3 -m venv .venv
RUN .venv/bin/pip install -r requirements.txt

CMD [".venv/bin/gunicorn", "--bind", "0.0.0.0:80", "flaskr:Flask"]