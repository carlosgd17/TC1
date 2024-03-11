FROM centos:7

RUN yum install -y httpd php php-cli php-common

RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

CMD ["apachectl", "-D", "FOREGROUND"]