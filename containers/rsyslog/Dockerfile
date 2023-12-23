FROM redhat/ubi8:latest

RUN yum -y update -y && yum -y install \
    rsyslog \
    openssh-server

COPY server-cert.pem /etc/pki/tls/certs/
COPY server-key.pem /etc/pki/tls/certs/
COPY cfp-ca.pem /etc/pki/tls/certs/

WORKDIR /

EXPOSE 22