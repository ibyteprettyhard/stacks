FROM redhat/ubi8:latest

RUN yum -y update -y && yum -y install \
    openssh-server \
    gcc \
    glibc.i686 \
    ncurses-libs.i686 \
    ncurses-libs \
    libstdc++.i686 \
    procps-ng

RUN systemctl enable sshd.service
RUN mkdir /usr/micro
WORKDIR /usr/micro
COPY .bash_profile /etc/skel
COPY functions /etc/rc.d/init.d/
COPY mmaker_routproc /etc/rc.d/init.d/
COPY mmaker_aca /etc/rc.d/init.d/
RUN chmod +x /etc/rc.d/init.d/mmaker*
RUN ln -s /usr/lib/libncurses.so.6 /usr/lib/libncurses.so.5

COPY microdir.tar.gz .
RUN tar -vxzf microdir.tar.gz -C /usr
RUN rm microdir.tar.gz

RUN /etc/init.d/mmaker_aca start
RUN /etc/init.d/mmaker_routproc start

RUN ssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N ''
RUN groupadd -g 500 mmaker && useradd -g 500 -u 500 micro
EXPOSE 22