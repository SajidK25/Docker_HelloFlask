FROM python:3.7.2-alpine3.8
LABEL maintainer="sajidk25@gmail.com"
WORKDIR /usr/src/myproject
COPY hello.py .
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install Flask
ENV FLASK_APP=hello.py
RUN export FLASK_APP
CMD flask run --host=0.0.0.0
EXPOSE 5000