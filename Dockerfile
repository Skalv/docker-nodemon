# https://hub.docker.com/r/iain/nodemon/~/dockerfile/

FROM iain/nodemon

RUN /usr/local/bin/npm install -g coffee-script

# Define default command. 
CMD ["/usr/local/bin/nodemon","server.coffee"]
