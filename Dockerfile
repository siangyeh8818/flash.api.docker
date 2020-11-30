FROM python:3.7.2-stretch

WORKDIR /app

COPY requirements.txt /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN python -m pip install mysql-connector

COPY main.py /app

CMD python main.py
