docker-jackrabbit
=================
This is the base image with supported Ubuntu Long-Term-Support, java and jackrabbit
You find it on the docker repository under [rootlogin/jackrabbit](https://index.docker.io/u/rootlogin/jackrabbit/)

This image is based on the openjdk image: https://hub.docker.com/_/openjdk/


Installed software:
- [Jackrabbit](https://jackrabbit.apache.org/)

Currently available jackrabbit versions (see branches)
- Jackrabbit 2.6.5 - Standalone


Getting started
---------------

```
docker build -t mpm/jackrabbit .
docker run -p 127.0.0.1:8080:8080  mpm/jackrabbit
```

You can also use the produced image in compose receipt.

Documentation
-------------

* [Backup and Restore](doc/backup.md)
