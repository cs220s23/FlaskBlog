FROM python:slim

WORKDIR /app

COPY requirements.txt .

RUN python3 -m venv .venv
RUN .venv/bin/pip install -r requirements.txt

COPY flaskr flaskr

COPY instance instance

CMD [".venv/bin/waitress-serve", "--port=80", "--call", "flaskr:create_app"]
