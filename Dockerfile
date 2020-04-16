FROM nginx:1.16.1
WORKDIR /usr/share/nginx/html

COPY static-html-directory .
# TODO it is better to download the actual image file here
ADD https://exadel.com/wp-content/themes/exadel/images/logo-header.svg .
RUN chmod 744 logo-header.svg

CMD nginx -g 'daemon off;'

EXPOSE 80
