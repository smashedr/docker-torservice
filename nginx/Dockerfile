FROM nginx:alpine
ENV TZ=America/Los_Angeles

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /data/nginx/html
ADD html /data/nginx/html
