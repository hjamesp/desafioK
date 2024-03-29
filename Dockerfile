FROM docker/whalesay:latest
LABEL Name=desafiok Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay

FROM python:2.7
  LABEL maintainer="Kunal Malhotra, kunal.malhotra1@ibm.com"
  RUN apt-get update
  RUN mkdir /app
  WORKDIR /app
  COPY . /app
  RUN pip install -r requirements.txt
  EXPOSE 5000
  ENTRYPOINT [ "python" ]
  CMD [ "app.py" ]

