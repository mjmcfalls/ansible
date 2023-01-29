FROM python:3.9-slim-buster

RUN pip install pip --upgrade
RUN pip install ansible
RUN pip install "pywinrm>=0.3.0"

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass openssh-client

CMD ansible
