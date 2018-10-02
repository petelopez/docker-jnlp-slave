FROM jenkins/jnlp-slave

SHELL ["/bin/bash", "-c"]
USER root

WORKDIR /

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN export PATH=~/.local/bin:$PATH
RUN . ~/.profile
RUN pip install awscli --upgrade

USER jenkins