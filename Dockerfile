FROM docker:stable

RUN apk add --no-cache bash openssh openssh-client \
    && sed -i s/#PasswordAuthentication.*/PasswordAuthentication\ no/ /etc/ssh/sshd_config

COPY entrypoint.sh /usr/local/bin

COPY ssh /root/.ssh
COPY ssh_config /etc/ssh/ssh_config

ENTRYPOINT ["entrypoint.sh"]
