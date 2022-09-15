FROM python:3.7.11-alpine3.13

ENV INSTALL_PATH /flaskpostgresapp
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip


RUN pip install -r requirements.txt

COPY . .

# ENTRYPOINT ["python"]

# CMD ["app.py"]
EXPOSE 8080

#CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]