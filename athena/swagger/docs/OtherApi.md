# SwaggerClient::OtherApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categories_list**](OtherApi.md#categories_list) | **GET** /categories | Public Categories
[**file_download**](OtherApi.md#file_download) | **GET** /file/download/{file_id} | Public File Download
[**licenses_list**](OtherApi.md#licenses_list) | **GET** /licenses | Public Licenses
[**private_account**](OtherApi.md#private_account) | **GET** /account | Private Account information
[**private_licenses_list**](OtherApi.md#private_licenses_list) | **GET** /account/licenses | Private Account Licenses


# **categories_list**
> Array&lt;Category&gt; categories_list

Public Categories

Returns a list of public categories

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OtherApi.new

begin
  #Public Categories
  result = api_instance.categories_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OtherApi->categories_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **file_download**
> file_download(file_id)

Public File Download

Starts the download of a file

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OtherApi.new

file_id = 789 # Integer | 


begin
  #Public File Download
  api_instance.file_download(file_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OtherApi->file_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/force-download



# **licenses_list**
> Array&lt;License&gt; licenses_list

Public Licenses

Returns a list of public licenses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OtherApi.new

begin
  #Public Licenses
  result = api_instance.licenses_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OtherApi->licenses_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;License&gt;**](License.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_account**
> Account private_account

Private Account information

Account information for token/personal token

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::OtherApi.new

begin
  #Private Account information
  result = api_instance.private_account
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OtherApi->private_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Account**](Account.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_licenses_list**
> Array&lt;License&gt; private_licenses_list

Private Account Licenses

This is a private endpoint that requires OAuth. It will return a list with figshare public licenses AND licenses defined for account's institution.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::OtherApi.new

begin
  #Private Account Licenses
  result = api_instance.private_licenses_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OtherApi->private_licenses_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;License&gt;**](License.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



