FROM python:3.8

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir detect-secrets

WORKDIR /data

ADD run.sh /root/run.sh
CMD [ "/root/run.sh" ]
