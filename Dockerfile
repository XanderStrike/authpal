FROM nginx:latest

RUN apt-get update && apt-get install -y apache2-utils

COPY nginx.conf /etc/nginx/nginx.conf.template

CMD htpasswd -cb /etc/nginx/.htpasswd "$USER" "$PASS" && \
    envsubst '\$APP_HOST,\$APP_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && \
    nginx -g 'daemon off;'
