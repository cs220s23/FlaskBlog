FROM python:slim

WORKDIR /app

COPY requirements.txt .

COPY flaskr flaskr

RUN python3 -m venv .venv
RUN .venv/bin/pip install -r requirements.txt

CMD ["/home/ec2-user/flask/.venv/bin/waitress-serve", "--port=80",  "--call", "'flaskr:create_app’"]
