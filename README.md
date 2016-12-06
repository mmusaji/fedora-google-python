# fedora-python
Dockerfile with google calendar api in python on Fedora

A simple helloworld python app in a docker container

The container is based of Fedora as the base image
The other files in this repo are not really needed and the only files that are required are the requirements.txt and the app.py.

For OPENSHIFT the app.py has to be called this otherwise you need to include a ./s2i/environment file with the Python configuration for OpenShift to know where the entry point for the app is. See here:

https://docs.openshift.com/enterprise/3.1/using_images/s2i_images/python.html#configuration

docker build -t <name> .
docker run -i -t <name>

Inspect the docker container running to get the ip and hit that IP in any browser.
