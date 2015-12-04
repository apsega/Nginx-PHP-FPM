# Nginx-PHP-FPM

[![](https://badge.imagelayers.io/edgaras/nginx-php-fpm:latest.svg)](https://imagelayers.io/?images=edgaras/nginx-php-fpm:latest)

Docker container for Nginx + PHP-FPM based on CentOS latest image.

Additional PHP extensions are included for various CMS (such as OpenCart) support:

- php-gd 
- php-mcrypt
- php-mysql

Added custom ``nginx.conf`` configuration file that passes all PHP scripts to FastCGI (PHP-FPM). SEO URLs are supported.

#### Some ``docker run`` examples

The following example runs latest container with the ``nginx`` name and randomly assigns Nginx and PHP-FPM ports:

``docker run --name nginx -P -d edgaras/nginx-php-fpm:latest``

This example maps containers Nginx and hosts 80 ports, randomly assigns port to containers PHP-FPM 9000 port as well as links hosts ``/var/www/`` location to containers root web directory - ``/usr/share/nginx/html/``

``docker run --name nginx -p 80:80 -P -v /var/www:/usr/share/nginx/html -d edgaras/nginx-php-fpm:latest``

