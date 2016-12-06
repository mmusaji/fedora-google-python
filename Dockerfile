#Base image from docker hub
FROM fedora

# install python and flask
RUN yum install -y python
RUN pip install flask

# Copy over application (has to be called app.py as this is what OCP defaults
# too. If we want something else we have to use a .s2i/environment file
COPY requirements.txt /my_application/requirements.txt
COPY app.py /my_application/app.py

# Expose port 
EXPOSE 80

# Run application
CMD ["python", "/my_application/app.py", "-p 80"]
