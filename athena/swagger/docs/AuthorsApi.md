# SwaggerClient::AuthorsApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**private_author_details**](AuthorsApi.md#private_author_details) | **GET** /account/authors/{author_id} | Author details
[**private_authors_search**](AuthorsApi.md#private_authors_search) | **POST** /account/authors/search | Search Authors


# **private_author_details**
> AuthorComplete private_author_details(author_id)

Author details

View author details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthorsApi.new

author_id = 789 # Integer | Author unique identifier


begin
  #Author details
  result = api_instance.private_author_details(author_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthorsApi->private_author_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **author_id** | **Integer**| Author unique identifier | 

### Return type

[**AuthorComplete**](AuthorComplete.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_authors_search**
> Array&lt;Author&gt; private_authors_search(opts)

Search Authors

Search for authors

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthorsApi.new

opts = { 
  search: SwaggerClient::PrivateAuthorsSearch.new # PrivateAuthorsSearch | Search Parameters
}

begin
  #Search Authors
  result = api_instance.private_authors_search(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthorsApi->private_authors_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**PrivateAuthorsSearch**](PrivateAuthorsSearch.md)| Search Parameters | [optional] 

### Return type

[**Array&lt;Author&gt;**](Author.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



