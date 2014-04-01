FROM rootlogin/ubuntu-java:12.04
MAINTAINER Simon Erhardt <me@rootlogin.ch>

RUN mkdir /jackrabbit && \
    cd /jackrabbit && \
    wget http://www.eu.apache.org/dist/jackrabbit/2.6.5/jackrabbit-standalone-2.6.5.jar -O jackrabbit-standalone.jar

# Open Port 8080
EXPOSE 8080

# Let's run the apache
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/jackrabbit/jackrabbit-standalone.jar"]