FROM fedora

RUN yum install -y python
RUN pip install flask

COPY requirements.txt /my_application/requirements.txt
COPY wsgi.py /my_application/wsgi.py

EXPOSE 80

CMD ["python", "/my_application/wsgi.py", "-p 80"]
