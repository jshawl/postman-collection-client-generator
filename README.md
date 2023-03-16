# Postman Collection Client Generator

⚠️ very alpha

## Overview

There are so many useful libraries out there for generating SDKs. Unfortunately
they each have different runtimes and dependencies. 

This project provides a singular interface for generating client SDK libraries from a
Postman collection.

1. Use the [Postman API](https://www.postman.com/postman/workspace/postman-public-workspace/documentation/12959542-c8142d51-e97c-46b6-bd77-52bb66712c9a#647806d5-492a-eded-1df6-6529b5dc685c) to download a collection.
2. Use [postman-to-api](https://joolfe.github.io/postman-to-openapi/) to generate the collection into an Open API format.
3. Use [openapi-generator](https://github.com/OpenAPITools/openapi-generator) to generate the client SDK.

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

### Start the Container
```
docker run --rm -it -v "$PWD/build:/app/build" --env-file .env --entrypoint bash postman-collection-client-generator
```

### Download the Postman collection

```
./generate-collection
```

### Generate the Open API spec

```
./generate-openapi
```

You'll probably need to hand edit a few things here, or add `--skip-validate-spec`

### Generate the Client

This example generates a Ruby client. Any one of [these generators](https://openapi-generator.tech/docs/generators) will work.

```
./generate-client ruby
```

All the output is stored in the `build/` directory:

```
build/
├── openapi.yml
├── postman.json
└── sdk/
```

By default, everything inside of `build/` is ignored (see `.gitignore`). Just a heads up.
