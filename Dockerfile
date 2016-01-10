# https://hub.docker.com/r/iain/nodemon/~/dockerfile/

FROM ubuntu 

# Install Node.js 
RUN apt-get update
RUN apt-get install -y curl

# Use 'n' to install Node.js RUN mkdir -p /usr/local/bin
RUN curl https://raw.github.com/visionmedia/n/master/bin/n -o /usr/local/bin/n
RUN chmod 755 /usr/local/bin/n
RUN chown root:root /usr/local/bin/n
RUN /usr/local/bin/n stable || true

# Install file system watcher to auto-reload node during development 
RUN /usr/local/bin/npm install -g nodemon

# Define default command. 
CMD ["/usr/local/bin/nodemon","server.coffee"]
