FROM centos

RUN yum install httpd -y
RUN yum install net-tools -y

COPY index.php /var/www/html/index.php

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
