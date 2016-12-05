FROM fedora

RUN yum install -y python
RUN pip install flask

COPY config.py /my_application/config.py
COPY requirements.txt /my_application/requirements.txt
COPY wsgi.py /my_application/wsgi.py

EXPOSE 80

WORKDIR my_application

CMD python wsgi.py
