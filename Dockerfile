FROM python:3.7.11-slim

WORKDIR  /python-api

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
