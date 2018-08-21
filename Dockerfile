FROM python:3.6

WORKDIR /login3
COPY . /login3/


RUN pip install -r requirements.txt

expose 389:389

ENV FLASK_APP=server.py
RUN cd /login3
RUN cat server.py
CMD flask run --host 0.0.0.0