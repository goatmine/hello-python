FROM resin/rpi-raspbian:wheezy

# Install Python.
RUN apt-get update
RUN apt-get install -y python

ADD . /app

RUN echo python app/hello.py > /start
RUN chmod +x /start
