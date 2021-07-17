FROM python:3.7.2

RUN apt-get update

RUN apt-get install -y python-pip

RUN pip install --upgrade pip

ADD app.py /

ADD requirements.txt /

RUN pip install -r requirements.txt

CMD [ "python", "app.py" ]
