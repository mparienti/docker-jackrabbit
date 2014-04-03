FROM rootlogin/ubuntu-java:12.04
MAINTAINER Simon Erhardt <me@rootlogin.ch>

# Add and run the installer
ADD . /app
RUN /app/src/installer.sh

# Let's run the jackrabbit
VOLUME ["/app/jackrabbit"]
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/app/jackrabbit-standalone.jar"]