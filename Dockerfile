FROM nginx:1.24.0-alpine3.17-slim

WORKDIR /

COPY ./default.conf ./etc/nginx/conf.d/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
