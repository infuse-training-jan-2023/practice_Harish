FROM python:latest

WORKDIR /usr/local/python

COPY  . .
ARG script=python
RUN echo " script=> ${script}"
RUN pip install numpy
ENV NUM=2
CMD python arrayManipulation.py 1