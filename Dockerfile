FROM fedora

RUN yum install -y python
RUN pip install flask

COPY requirements.txt /my_application/requirements.txt
COPY app.py /my_application/app.py

EXPOSE 80

CMD ["python", "/my_application/app.py", "-p 80"]
