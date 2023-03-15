# Postman Collection Client Generator

## Local Development


### Build the Image
```
docker build . -t postman-collection-client-generator:latest
```

### Populate the env vars

```
cp .env.example .env
# and then edit the values
```

### Enter the Container
```
docker run --rm -it --env-file .env --entrypoint bash postman-collection-client-generator
```

### Download the Postman collection

```
./get-collection
```

### Generate the Open API spec

```
./generate-openapi
```

### Generate the Client

```
@openapitools/openapi-generator-cli generate -i openapi.yaml -g ruby -o /tmp/test/
```
