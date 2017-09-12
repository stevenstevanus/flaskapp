FROM centos:latest
WORKDIR /bottleapp
ADD hello-bottle.py /bottleapp
RUN yum install -y epel-release
RUN yum install -y python-pip
RUN pip install bottle
EXPOSE 8000
ENTRYPOINT ["/usr/bin/python", "/bottleapp/hello-bottle.py"]
