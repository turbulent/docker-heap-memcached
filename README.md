# heap-memcached Docker image.

Docker image for Memcached service in Heap-based hosting environments.

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

## License

All work found under this repository is licensed under the [Apache
License 2.0](LICENSE).

