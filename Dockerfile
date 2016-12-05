FROM fedora

RUN yum install -y python
RUN pip install flask
RUN pip install --upgrade google-api-python-client

ADD /my_application /my_application
COPY /my_application/client_secret.json ~/.credentials/client_secret.json

EXPOSE 80

WORKDIR /my_application

CMD python app.py
