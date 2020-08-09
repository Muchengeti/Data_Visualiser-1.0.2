# SwaggerClient::CollectionsApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**collection_articles**](CollectionsApi.md#collection_articles) | **GET** /collections/{collection_id}/articles | Public Collection Articles
[**collection_details**](CollectionsApi.md#collection_details) | **GET** /collections/{collection_id} | Collection details
[**collection_version_details**](CollectionsApi.md#collection_version_details) | **GET** /collections/{collection_id}/versions/{version_id} | Collection Version details
[**collection_versions**](CollectionsApi.md#collection_versions) | **GET** /collections/{collection_id}/versions | Collection Versions list
[**collections_list**](CollectionsApi.md#collections_list) | **GET** /collections | Public Collections
[**collections_search**](CollectionsApi.md#collections_search) | **POST** /collections/search | Public Collections Search
[**private_collection_article_delete**](CollectionsApi.md#private_collection_article_delete) | **DELETE** /account/collections/{collection_id}/articles/{article_id} | Delete collection article
[**private_collection_articles_add**](CollectionsApi.md#private_collection_articles_add) | **POST** /account/collections/{collection_id}/articles | Add collection articles
[**private_collection_articles_list**](CollectionsApi.md#private_collection_articles_list) | **GET** /account/collections/{collection_id}/articles | List collection articles
[**private_collection_articles_replace**](CollectionsApi.md#private_collection_articles_replace) | **PUT** /account/collections/{collection_id}/articles | Replace collection articles
[**private_collection_author_delete**](CollectionsApi.md#private_collection_author_delete) | **DELETE** /account/collections/{collection_id}/authors/{author_id} | Delete collection author
[**private_collection_authors_add**](CollectionsApi.md#private_collection_authors_add) | **POST** /account/collections/{collection_id}/authors | Add collection authors
[**private_collection_authors_list**](CollectionsApi.md#private_collection_authors_list) | **GET** /account/collections/{collection_id}/authors | List collection authors
[**private_collection_authors_replace**](CollectionsApi.md#private_collection_authors_replace) | **PUT** /account/collections/{collection_id}/authors | Replace collection authors
[**private_collection_categories_add**](CollectionsApi.md#private_collection_categories_add) | **POST** /account/collections/{collection_id}/categories | Add collection categories
[**private_collection_categories_list**](CollectionsApi.md#private_collection_categories_list) | **GET** /account/collections/{collection_id}/categories | List collection categories
[**private_collection_categories_replace**](CollectionsApi.md#private_collection_categories_replace) | **PUT** /account/collections/{collection_id}/categories | Replace collection categories
[**private_collection_category_delete**](CollectionsApi.md#private_collection_category_delete) | **DELETE** /account/collections/{collection_id}/categories/{category_id} | Delete collection category
[**private_collection_create**](CollectionsApi.md#private_collection_create) | **POST** /account/collections | Create collection
[**private_collection_delete**](CollectionsApi.md#private_collection_delete) | **DELETE** /account/collections/{collection_id} | Delete collection
[**private_collection_details**](CollectionsApi.md#private_collection_details) | **GET** /account/collections/{collection_id} | Collection details
[**private_collection_private_link_create**](CollectionsApi.md#private_collection_private_link_create) | **POST** /account/collections/{collection_id}/private_links | Create collection private link
[**private_collection_private_link_delete**](CollectionsApi.md#private_collection_private_link_delete) | **DELETE** /account/collections/{collection_id}/private_links/{link_id} | Disable private link
[**private_collection_private_link_update**](CollectionsApi.md#private_collection_private_link_update) | **PUT** /account/collections/{collection_id}/private_links/{link_id} | Update collection private link
[**private_collection_private_links_list**](CollectionsApi.md#private_collection_private_links_list) | **GET** /account/collections/{collection_id}/private_links | List collection private links
[**private_collection_publish**](CollectionsApi.md#private_collection_publish) | **POST** /account/collections/{collection_id}/publish | Private Collection Publish
[**private_collection_reserve_doi**](CollectionsApi.md#private_collection_reserve_doi) | **POST** /account/collections/{collection_id}/reserve_doi | Private Collection Reserve DOI
[**private_collection_update**](CollectionsApi.md#private_collection_update) | **PUT** /account/collections/{collection_id} | Update collection
[**private_collections_list**](CollectionsApi.md#private_collections_list) | **GET** /account/collections | Private Collections List
[**private_collections_search**](CollectionsApi.md#private_collections_search) | **POST** /account/collections/search | Private Collections Search


# **collection_articles**
> Array&lt;Article&gt; collection_articles(collection_id, opts)

Public Collection Articles

Returns a list of public collection articles

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789 # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
}

begin
  #Public Collection Articles
  result = api_instance.collection_articles(collection_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collection_articles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collection_details**
> CollectionComplete collection_details(collection_id)

Collection details

View a collection

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Collection details
  result = api_instance.collection_details(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collection_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

[**CollectionComplete**](CollectionComplete.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collection_version_details**
> CollectionComplete collection_version_details(collection_id, version_id)

Collection Version details

View details for a certain version of a collection

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier

version_id = 789 # Integer | Version Number


begin
  #Collection Version details
  result = api_instance.collection_version_details(collection_id, version_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collection_version_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 
 **version_id** | **Integer**| Version Number | 

### Return type

[**CollectionComplete**](CollectionComplete.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collection_versions**
> Array&lt;Version&gt; collection_versions(collection_id)

Collection Versions list

Returns a list of public collection Versions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Collection Versions list
  result = api_instance.collection_versions(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collection_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

[**Array&lt;Version&gt;**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_list**
> Array&lt;Collection&gt; collections_list(opts)

Public Collections

Returns a list of public collections

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc", # String | 
  institution: 789, # Integer | only return collections from this institution
  published_since: "published_since_example", # String | Filter by collection publishing date. Will only return collections published after the date. date(ISO 8601) YYYY-MM-DD
  modified_since: "modified_since_example", # String | Filter by collection modified date. Will only return collections published after the date. date(ISO 8601) YYYY-MM-DD
  group: 789, # Integer | only return collections from this group
  resource_doi: "resource_doi_example", # String | only return collections with this resource_doi
  doi: "doi_example" # String | only return collections with this doi
}

begin
  #Public Collections
  result = api_instance.collections_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 
 **order** | **String**| The field by which to order. Default varies by endpoint/resource. | [optional] [default to published_date]
 **order_direction** | **String**|  | [optional] [default to desc]
 **institution** | **Integer**| only return collections from this institution | [optional] 
 **published_since** | **String**| Filter by collection publishing date. Will only return collections published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **modified_since** | **String**| Filter by collection modified date. Will only return collections published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **group** | **Integer**| only return collections from this group | [optional] 
 **resource_doi** | **String**| only return collections with this resource_doi | [optional] 
 **doi** | **String**| only return collections with this doi | [optional] 

### Return type

[**Array&lt;Collection&gt;**](Collection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **collections_search**
> Array&lt;Collection&gt; collections_search(opts)

Public Collections Search

Returns a list of public collections

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsApi.new

opts = { 
  search: SwaggerClient::CollectionSearch.new # CollectionSearch | Search Parameters
}

begin
  #Public Collections Search
  result = api_instance.collections_search(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->collections_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**CollectionSearch**](CollectionSearch.md)| Search Parameters | [optional] 

### Return type

[**Array&lt;Collection&gt;**](Collection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_article_delete**
> private_collection_article_delete(collection_id, article_id)

Delete collection article

De-associate article from collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

article_id = 789 # Integer | Collection article unique identifier


begin
  #Delete collection article
  api_instance.private_collection_article_delete(collection_id, article_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_article_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **article_id** | **Integer**| Collection article unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_articles_add**
> Location private_collection_articles_add(collection_id, articles)

Add collection articles

Associate new articles with the collection. This will add new articles to the list of already associated articles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

articles = SwaggerClient::ArticlesCreator.new # ArticlesCreator | Articles list


begin
  #Add collection articles
  result = api_instance.private_collection_articles_add(collection_id, articles)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_articles_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **articles** | [**ArticlesCreator**](ArticlesCreator.md)| Articles list | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_articles_list**
> Array&lt;Article&gt; private_collection_articles_list(collection_id, )

List collection articles

List collection articles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier


begin
  #List collection articles
  result = api_instance.private_collection_articles_list(collection_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_articles_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_articles_replace**
> private_collection_articles_replace(collection_id, articles)

Replace collection articles

Associate new articles with the collection. This will remove all already associated articles and add these new ones

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

articles = SwaggerClient::ArticlesCreator.new # ArticlesCreator | Articles List


begin
  #Replace collection articles
  api_instance.private_collection_articles_replace(collection_id, articles)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_articles_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **articles** | [**ArticlesCreator**](ArticlesCreator.md)| Articles List | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_author_delete**
> private_collection_author_delete(collection_id, author_id)

Delete collection author

Delete collection author

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

author_id = 789 # Integer | Collection Author unique identifier


begin
  #Delete collection author
  api_instance.private_collection_author_delete(collection_id, author_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_author_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **author_id** | **Integer**| Collection Author unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_authors_add**
> Location private_collection_authors_add(collection_id, authors)

Add collection authors

Associate new authors with the collection. This will add new authors to the list of already associated authors

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

authors = SwaggerClient::AuthorsCreator.new # AuthorsCreator | List of authors


begin
  #Add collection authors
  result = api_instance.private_collection_authors_add(collection_id, authors)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_authors_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **authors** | [**AuthorsCreator**](AuthorsCreator.md)| List of authors | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_authors_list**
> Array&lt;Author&gt; private_collection_authors_list(collection_id, )

List collection authors

List collection authors

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier


begin
  #List collection authors
  result = api_instance.private_collection_authors_list(collection_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_authors_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 

### Return type

[**Array&lt;Author&gt;**](Author.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_authors_replace**
> private_collection_authors_replace(collection_id, authors)

Replace collection authors

Associate new authors with the collection. This will remove all already associated authors and add these new ones

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

authors = SwaggerClient::AuthorsCreator.new # AuthorsCreator | List of authors


begin
  #Replace collection authors
  api_instance.private_collection_authors_replace(collection_id, authors)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_authors_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **authors** | [**AuthorsCreator**](AuthorsCreator.md)| List of authors | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_categories_add**
> Location private_collection_categories_add(collection_id, categories)

Add collection categories

Associate new categories with the collection. This will add new categories to the list of already associated categories

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

categories = SwaggerClient::CategoriesCreator.new # CategoriesCreator | Categories list


begin
  #Add collection categories
  result = api_instance.private_collection_categories_add(collection_id, categories)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_categories_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **categories** | [**CategoriesCreator**](CategoriesCreator.md)| Categories list | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_categories_list**
> Array&lt;Category&gt; private_collection_categories_list(collection_id, )

List collection categories

List collection categories

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier


begin
  #List collection categories
  result = api_instance.private_collection_categories_list(collection_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_categories_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_categories_replace**
> private_collection_categories_replace(collection_id, categories)

Replace collection categories

Associate new categories with the collection. This will remove all already associated categories and add these new ones

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

categories = SwaggerClient::CategoriesCreator.new # CategoriesCreator | Categories list


begin
  #Replace collection categories
  api_instance.private_collection_categories_replace(collection_id, categories)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_categories_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **categories** | [**CategoriesCreator**](CategoriesCreator.md)| Categories list | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_category_delete**
> private_collection_category_delete(collection_id, category_id)

Delete collection category

De-associate category from collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

category_id = 789 # Integer | Collection category unique identifier


begin
  #Delete collection category
  api_instance.private_collection_category_delete(collection_id, category_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_category_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **category_id** | **Integer**| Collection category unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_create**
> CollectionComplete private_collection_create(collection)

Create collection

Create a new Collection by sending collection information

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection = SwaggerClient::CollectionCreate.new # CollectionCreate | Collection description


begin
  #Create collection
  result = api_instance.private_collection_create(collection)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection** | [**CollectionCreate**](CollectionCreate.md)| Collection description | 

### Return type

[**CollectionComplete**](CollectionComplete.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_delete**
> private_collection_delete(collection_id)

Delete collection

Delete n collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Delete collection
  api_instance.private_collection_delete(collection_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_details**
> CollectionComplete private_collection_details(collection_id)

Collection details

View a collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Collection details
  result = api_instance.private_collection_details(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

[**CollectionComplete**](CollectionComplete.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_private_link_create**
> Location private_collection_private_link_create(collection_id, opts)

Create collection private link

Create new private link

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

opts = { 
  private_link: SwaggerClient::CollectionPrivateLinkCreator.new # CollectionPrivateLinkCreator | 
}

begin
  #Create collection private link
  result = api_instance.private_collection_private_link_create(collection_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_private_link_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **private_link** | [**CollectionPrivateLinkCreator**](CollectionPrivateLinkCreator.md)|  | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_private_link_delete**
> private_collection_private_link_delete(collection_id, link_id)

Disable private link

Disable/delete private link for this collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

link_id = "link_id_example" # String | Private link token


begin
  #Disable private link
  api_instance.private_collection_private_link_delete(collection_id, link_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_private_link_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **link_id** | **String**| Private link token | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_private_link_update**
> private_collection_private_link_update(collection_id, link_id, opts)

Update collection private link

Update existing private link for this collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier

link_id = "link_id_example" # String | Private link token

opts = { 
  private_link: SwaggerClient::CollectionPrivateLinkCreator.new # CollectionPrivateLinkCreator | 
}

begin
  #Update collection private link
  api_instance.private_collection_private_link_update(collection_id, link_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_private_link_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 
 **link_id** | **String**| Private link token | 
 **private_link** | [**CollectionPrivateLinkCreator**](CollectionPrivateLinkCreator.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_private_links_list**
> Array&lt;PrivateLink&gt; private_collection_private_links_list(collection_id)

List collection private links

List article private links

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection unique identifier


begin
  #List collection private links
  result = api_instance.private_collection_private_links_list(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_private_links_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection unique identifier | 

### Return type

[**Array&lt;PrivateLink&gt;**](PrivateLink.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_publish**
> Location private_collection_publish(collection_id)

Private Collection Publish

When a collection is published, a new public version will be generated. Any further updates to the collection will affect the private collection data. In order to make these changes publicly visible, an explicit publish operation is needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Private Collection Publish
  result = api_instance.private_collection_publish(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_publish: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_reserve_doi**
> ArticleDOI private_collection_reserve_doi(collection_id)

Private Collection Reserve DOI

Reserve DOI for collection

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier


begin
  #Private Collection Reserve DOI
  result = api_instance.private_collection_reserve_doi(collection_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_reserve_doi: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 

### Return type

[**ArticleDOI**](ArticleDOI.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collection_update**
> private_collection_update(collection_idcollection)

Update collection

Update collection details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

collection_id = 789 # Integer | Collection Unique identifier

collection = SwaggerClient::CollectionUpdate.new # CollectionUpdate | Collection description


begin
  #Update collection
  api_instance.private_collection_update(collection_idcollection)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collection_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **Integer**| Collection Unique identifier | 
 **collection** | [**CollectionUpdate**](CollectionUpdate.md)| Collection description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collections_list**
> Array&lt;Collection&gt; private_collections_list(opts)

Private Collections List

List private collections

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc" # String | 
}

begin
  #Private Collections List
  result = api_instance.private_collections_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collections_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 
 **order** | **String**| The field by which to order. Default varies by endpoint/resource. | [optional] [default to published_date]
 **order_direction** | **String**|  | [optional] [default to desc]

### Return type

[**Array&lt;Collection&gt;**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_collections_search**
> Array&lt;Collection&gt; private_collections_search(search)

Private Collections Search

Returns a list of private Collections

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CollectionsApi.new

search = SwaggerClient::PrivateCollectionSearch.new # PrivateCollectionSearch | Search Parameters


begin
  #Private Collections Search
  result = api_instance.private_collections_search(search)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsApi->private_collections_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**PrivateCollectionSearch**](PrivateCollectionSearch.md)| Search Parameters | 

### Return type

[**Array&lt;Collection&gt;**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



