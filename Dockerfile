ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION}

# install nginx-extras for fancyindex, and clear /var/www directory
RUN apt-get update \
    && apt-get install -y curl nginx-extras \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/www/ \
    && rm /etc/nginx/sites-enabled/default

COPY src/ /var/www/fancyindex
