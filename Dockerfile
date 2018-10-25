FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /voting-system-mr-and-ms-usiu
WORKDIR /voting-system-mr-and-ms-usiu 
COPY . /voting-system-mr-and-ms-usiu/ 

RUN pip install --upgrade pip

RUN pip install -r requirements.txt 

EXPOSE 8000

CMD /voting-system-mr-and-ms-usiu/run.sh
