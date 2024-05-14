# # Dir Tree just like:
# .
# ├── app
# │   ├── __init__.py
# │   └── main.py
# ├── Dockerfile
# └── requirements.txt

FROM tiangolo/uvicorn-gunicorn:python3.11

LABEL maintainer="Ian <ianvzs@163.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
