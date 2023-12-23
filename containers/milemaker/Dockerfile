FROM redhat/ubi8:latest

RUN yum -y update -y && yum -y install \
    openssh-server \
    gcc \
    glibc.i686 \
    ncurses-libs.i686 \
    libstdc++.i686
    

run mkdir /usr/micro
WORKDIR /usr/micro
COPY .bash_profile /etc/skel
COPY microdir.tar.gz .
COPY mmaker_routproc .
COPY mmaker_aca .

RUN tar -vxzf microdir.tar.gz -C /usr

RUN groupadd -g 500 mmaker && useradd -g 500 -u 500 micro
