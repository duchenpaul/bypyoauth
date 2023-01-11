FROM python:3.10.2-slim-bullseye
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt 
EXPOSE 8000

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]