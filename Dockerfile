FROM python:3.9

RUN mkdir /code

WORKDIR /code

RUN pip install --upgrade pip

COPY . /code/

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "helloworld/manage.py", "runserver", "0.0.0.0:8000"]