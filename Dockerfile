FROM python:bullseye

RUN curl -L https://github.com/broamski/aws-mfa/archive/refs/heads/master.zip > aws-mfa.zip \
    && unzip aws-mfa.zip \
    && cd aws-mfa-master \
    && python3 setup.py install \
    && cd .. \
    && rm -rf aws-mfa-master \
    && rm aws-mfa.zip

RUN aws-mfa --help
