FROM debian:oldstable

RUN apt-get update && \
    apt-get install -y vsftpd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN mkdir -p /var/run/vsftpd/empty
RUN useradd -m alex && \
    echo "alex:pass" | chpasswd

EXPOSE 21

CMD ["vsftpd", "/etc/vsftpd.conf"]
