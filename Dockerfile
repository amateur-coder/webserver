FROM ubuntu:latest

RUN apt update
RUN apt install python3 python3-pip -y
RUN pip install Flask --break-system-packages

WORKDIR /webserver

COPY . /webserver
EXPOSE 4080

ENTRYPOINT ["python3"]
CMD ["app2.py"]
