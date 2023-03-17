
# GitHub REST API Ruby Client

## Build the Image

```
docker build . -t github-ruby-client:latest
```

## Start the container

```
docker run --rm -it -v "$PWD/build:/app/build" --env-file .env --entrypoint bash github-ruby-client:latest
```

## Generate Collection JSON

```
./generate-collection
```

## Generate the OpenAPI spec file

```
./generate-openapi
```

## Generate the Client

```
./generate-client ruby
```
