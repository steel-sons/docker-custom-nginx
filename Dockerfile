# Custom nginx Docker image file
# This is a multi-stage build 

FROM nginx:1.16.1

COPY static-html-directory /usr/share/nginx/html
