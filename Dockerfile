FROM python:3.7.15-slim
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
# EXPOSE $PORT
CMD uvicorn main:app --host 0.0.0.0