FROM nginx

ARG HOSTNAME
RUN echo "this response came from ${HOSTNAME}" > /usr/share/nginx/html/index.html

EXPOSE 80