# Custom nginx Docker image file
# This is a multi-stage build 

FROM nginx:1.16.1

COPY static-html-directory /usr/share/nginx/html
ADD https://exadel.com/wp-content/themes/exadel/images/logo-header.svg /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
CMD chmod 744 logo-header.svg
CMD nginx -g 'daemon off;'

EXPOSE 80
