FROM python:2

ADD . /moto/
ENV PYTHONUNBUFFERED 1

WORKDIR /moto/
RUN python setup.py install

#HEALTHCHECK --interval=5m --timeout=10s \
#  CMD curl -f http://localhost:5000 || exit 1

CMD ["moto_server ec2 -H 0.0.0.0"]

EXPOSE 5000
