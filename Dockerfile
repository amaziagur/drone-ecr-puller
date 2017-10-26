FROM docker:1.11.2

RUN apk add --no-cache python && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache

RUN pip install awscli --ignore-installed six

#copy code
ADD puller_complete.sh /opt/

RUN chmod +x /opt/puller_complete.sh

RUN apk -Uuv add curl ca-certificates

# login to aws and run script
ENTRYPOINT /opt/puller_complete.sh
