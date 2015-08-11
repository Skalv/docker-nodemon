FROM node:0.10

MAINTAINER Florent Boutin <fboutin76@gmail.com>

RUN npm install -g nodemon

RUN mkdir -p /var/www/myapp
WORKDIR /var/www/myapp

CMD ["bash"]
