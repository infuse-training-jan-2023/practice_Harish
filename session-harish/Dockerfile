FROM python:3.8-alpine

COPY ./requirements.txt ./flask/requirement.txt

WORKDIR /flask

COPY . .

RUN pip install -r requirements.txt
CMD ["python","./src/main.py"]
