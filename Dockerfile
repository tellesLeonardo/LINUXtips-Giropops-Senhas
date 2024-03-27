FROM python:3.8
ENV REDIS_HOST=my_redis
WORKDIR /app
RUN git clone  https://github.com/badtuxx/giropops-senhas.git ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade flask werkzeug
ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]
EXPOSE 5000