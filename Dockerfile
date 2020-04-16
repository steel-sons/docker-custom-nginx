FROM nginx:1.16.1
WORKDIR /usr/share/nginx/html

COPY static-html-directory .
RUN chmod 744 logo-header.svg

CMD nginx -g 'daemon off;'

EXPOSE 80
