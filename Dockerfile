FROM python:3.9
WORKDIR /app/backend
RUN echo $PWD
COPY requirements.txt /app/backend
RUN pip3 install -r /app/backend/requirements.txt
COPY . /app/backend
EXPOSE 8000
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
