# OpenapiClient::DefaultApi

All URIs are relative to *https://api.github.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_jshawl_get**](DefaultApi.md#users_jshawl_get) | **GET** /users/jshawl | /users/{username} |


## users_jshawl_get

> Object users_jshawl_get

/users/{username}

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new

begin
  # /users/{username}
  result = api_instance.users_jshawl_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->users_jshawl_get: #{e}"
end
```

#### Using the users_jshawl_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> users_jshawl_get_with_http_info

```ruby
begin
  # /users/{username}
  data, status_code, headers = api_instance.users_jshawl_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->users_jshawl_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

