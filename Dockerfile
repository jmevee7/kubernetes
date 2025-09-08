# Start from the Nginx Alpine image
FROM nginx:alpine3.18

# Install Git
RUN apk update && apk add git
RUN git clone https://github.com/jmevee7/kubernetes.git /tmp/sample-web-page \
    && mv /tmp/sample-web-page/* /usr/share/nginx/html/ \
    && rm -rf /tmp/sample-web-page