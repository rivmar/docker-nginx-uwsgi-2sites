FROM nginx:latest

RUN apt-get update && apt-get install -y nano mc iputils-ping

COPY nginx.conf /etc/nginx/nginx.conf
COPY uwsgi_params /etc/nginx/uwsgi_params
COPY ./sites/*.conf /etc/nginx/sites-available/

RUN mkdir -p /etc/nginx/sites-enabled/\
    && ln -s /etc/nginx/sites-available/*.conf /etc/nginx/sites-enabled/

RUN ln -sf /dev/stdout /var/log/nginx/error.log
RUN ln -sf /dev/stdout /var/log/nginx/access.log


CMD ["nginx", "-g", "daemon off;"]

