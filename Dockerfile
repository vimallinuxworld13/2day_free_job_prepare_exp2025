FROM redhat/ubi8:8.10 


RUN yum install python39 -y

RUN pip3 install flask

WORKDIR /mycode

COPY ./app.py  app.py

ENTRYPOINT [ "python3",  "app.py" ]


