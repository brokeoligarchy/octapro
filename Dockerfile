FROM nginx:stable-alpine-slim
COPY ./ /usr/share/nginx/html/
EXPOSE 80
WORKDIR /usr/share/nginx/html
ENV APP_VERSION 1.0.0
ENTRYPOINT ["nginx"] 
CMD ["-g","daemon off;"]
HEALTHCHECK --timeout=2s CMD curl -f localhost || exit 1
