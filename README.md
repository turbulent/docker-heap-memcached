# heap-memcached docker image.

Dockerized memcached daemon as the main entrypoint.

## Usage

```
$ docker run -d -p 11211:11211 heap-memcached 
```

You can pass envrionment variables when launching the container:
```
$ docker run -d -e "VAR_MEMCACHED_SIZE=10" -p 11211:11211 heap-memcached
```

## Environment variables

This image uses environment variables to override common configuration options.

The following environment variables are available (listed below with default values):

```
VAR_MEMCACHED_SIZE="10"
VAR_MEMCACHED_MAX_CONNECTIONS="1024"
```
