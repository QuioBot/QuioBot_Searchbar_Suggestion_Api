FROM python:3.7.15-slim
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["./start.sh"]