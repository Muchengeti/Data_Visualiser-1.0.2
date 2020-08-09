# SwaggerClient::ArticlesApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**article_details**](ArticlesApi.md#article_details) | **GET** /articles/{article_id} | View article details
[**article_file_details**](ArticlesApi.md#article_file_details) | **GET** /articles/{article_id}/files/{file_id} | Article file details
[**article_files**](ArticlesApi.md#article_files) | **GET** /articles/{article_id}/files | List article files
[**article_version_confidentiality**](ArticlesApi.md#article_version_confidentiality) | **GET** /articles/{article_id}/versions/{v_number}/confidentiality | Public Article Confidentiality for article version
[**article_version_details**](ArticlesApi.md#article_version_details) | **GET** /articles/{article_id}/versions/{v_number} | Article details for version
[**article_version_embargo**](ArticlesApi.md#article_version_embargo) | **GET** /articles/{article_id}/versions/{v_number}/embargo | Public Article Embargo for article version
[**article_versions**](ArticlesApi.md#article_versions) | **GET** /articles/{article_id}/versions | List article versions
[**articles_list**](ArticlesApi.md#articles_list) | **GET** /articles | Public Articles
[**articles_search**](ArticlesApi.md#articles_search) | **POST** /articles/search | Public Articles Search
[**private_article_author_delete**](ArticlesApi.md#private_article_author_delete) | **DELETE** /account/articles/{article_id}/authors/{author_id} | Delete article author
[**private_article_authors_add**](ArticlesApi.md#private_article_authors_add) | **POST** /account/articles/{article_id}/authors | Add article authors
[**private_article_authors_list**](ArticlesApi.md#private_article_authors_list) | **GET** /account/articles/{article_id}/authors | List article authors
[**private_article_authors_replace**](ArticlesApi.md#private_article_authors_replace) | **PUT** /account/articles/{article_id}/authors | Replace article authors
[**private_article_categories_add**](ArticlesApi.md#private_article_categories_add) | **POST** /account/articles/{article_id}/categories | Add article categories
[**private_article_categories_list**](ArticlesApi.md#private_article_categories_list) | **GET** /account/articles/{article_id}/categories | List article categories
[**private_article_categories_replace**](ArticlesApi.md#private_article_categories_replace) | **PUT** /account/articles/{article_id}/categories | Replace article categories
[**private_article_category_delete**](ArticlesApi.md#private_article_category_delete) | **DELETE** /account/articles/{article_id}/categories/{category_id} | Delete article category
[**private_article_confidentiality_delete**](ArticlesApi.md#private_article_confidentiality_delete) | **DELETE** /account/articles/{article_id}/confidentiality | Delete article confidentiality
[**private_article_confidentiality_details**](ArticlesApi.md#private_article_confidentiality_details) | **GET** /account/articles/{article_id}/confidentiality | Article confidentiality details
[**private_article_confidentiality_update**](ArticlesApi.md#private_article_confidentiality_update) | **PUT** /account/articles/{article_id}/confidentiality | Update article confidentiality
[**private_article_create**](ArticlesApi.md#private_article_create) | **POST** /account/articles | Create new Article
[**private_article_delete**](ArticlesApi.md#private_article_delete) | **DELETE** /account/articles/{article_id} | Delete article
[**private_article_details**](ArticlesApi.md#private_article_details) | **GET** /account/articles/{article_id} | Article details
[**private_article_embargo_delete**](ArticlesApi.md#private_article_embargo_delete) | **DELETE** /account/articles/{article_id}/embargo | Delete Article Embargo
[**private_article_embargo_details**](ArticlesApi.md#private_article_embargo_details) | **GET** /account/articles/{article_id}/embargo | Article Embargo Details
[**private_article_embargo_update**](ArticlesApi.md#private_article_embargo_update) | **PUT** /account/articles/{article_id}/embargo | Update Article Embargo
[**private_article_file**](ArticlesApi.md#private_article_file) | **GET** /account/articles/{article_id}/files/{file_id} | Single File
[**private_article_file_delete**](ArticlesApi.md#private_article_file_delete) | **DELETE** /account/articles/{article_id}/files/{file_id} | File Delete
[**private_article_files_list**](ArticlesApi.md#private_article_files_list) | **GET** /account/articles/{article_id}/files | List article files
[**private_article_private_link**](ArticlesApi.md#private_article_private_link) | **GET** /account/articles/{article_id}/private_links | List private links
[**private_article_private_link_create**](ArticlesApi.md#private_article_private_link_create) | **POST** /account/articles/{article_id}/private_links | Create private link
[**private_article_private_link_delete**](ArticlesApi.md#private_article_private_link_delete) | **DELETE** /account/articles/{article_id}/private_links/{link_id} | Disable private link
[**private_article_private_link_update**](ArticlesApi.md#private_article_private_link_update) | **PUT** /account/articles/{article_id}/private_links/{link_id} | Update private link
[**private_article_publish**](ArticlesApi.md#private_article_publish) | **POST** /account/articles/{article_id}/publish | Private Article Publish
[**private_article_reserve_doi**](ArticlesApi.md#private_article_reserve_doi) | **POST** /account/articles/{article_id}/reserve_doi | Private Article Reserve DOI
[**private_article_update**](ArticlesApi.md#private_article_update) | **PUT** /account/articles/{article_id} | Update article
[**private_article_upload_complete**](ArticlesApi.md#private_article_upload_complete) | **POST** /account/articles/{article_id}/files/{file_id} | Complete Upload
[**private_article_upload_initiate**](ArticlesApi.md#private_article_upload_initiate) | **POST** /account/articles/{article_id}/files | Initiate Upload
[**private_articles_list**](ArticlesApi.md#private_articles_list) | **GET** /account/articles | Private Articles
[**private_articles_search**](ArticlesApi.md#private_articles_search) | **POST** /account/articles/search | Private Articles search


# **article_details**
> ArticleComplete article_details(article_id)

View article details

View an article

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier


begin
  #View article details
  result = api_instance.article_details(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 

### Return type

[**ArticleComplete**](ArticleComplete.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_file_details**
> PublicFile article_file_details(article_id, file_id)

Article file details

File by id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier

file_id = 789 # Integer | File Unique identifier


begin
  #Article file details
  result = api_instance.article_file_details(article_id, file_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_file_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 
 **file_id** | **Integer**| File Unique identifier | 

### Return type

[**PublicFile**](PublicFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_files**
> Array&lt;PublicFile&gt; article_files(article_id)

List article files

Files list for article

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier


begin
  #List article files
  result = api_instance.article_files(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 

### Return type

[**Array&lt;PublicFile&gt;**](PublicFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_version_confidentiality**
> ArticleConfidentiality article_version_confidentiality(article_id, v_number)

Public Article Confidentiality for article version

Confidentiality for article version

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier

v_number = 789 # Integer | Version Number


begin
  #Public Article Confidentiality for article version
  result = api_instance.article_version_confidentiality(article_id, v_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_version_confidentiality: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 
 **v_number** | **Integer**| Version Number | 

### Return type

[**ArticleConfidentiality**](ArticleConfidentiality.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_version_details**
> ArticleComplete article_version_details(article_id, v_number)

Article details for version

Article with specified version

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier

v_number = 789 # Integer | Article Version Number


begin
  #Article details for version
  result = api_instance.article_version_details(article_id, v_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_version_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 
 **v_number** | **Integer**| Article Version Number | 

### Return type

[**ArticleComplete**](ArticleComplete.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_version_embargo**
> ArticleEmbargo article_version_embargo(article_id, v_number)

Public Article Embargo for article version

Embargo for article version

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier

v_number = 789 # Integer | Version Number


begin
  #Public Article Embargo for article version
  result = api_instance.article_version_embargo(article_id, v_number)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_version_embargo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 
 **v_number** | **Integer**| Version Number | 

### Return type

[**ArticleEmbargo**](ArticleEmbargo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **article_versions**
> Array&lt;Version&gt; article_versions(article_id)

List article versions

List public article versions

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article Unique identifier


begin
  #List article versions
  result = api_instance.article_versions(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->article_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article Unique identifier | 

### Return type

[**Array&lt;Version&gt;**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **articles_list**
> Array&lt;Article&gt; articles_list(opts)

Public Articles

Returns a list of public articles

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc", # String | 
  institution: 789, # Integer | only return collections from this institution
  published_since: "published_since_example", # String | Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  modified_since: "modified_since_example", # String | Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  group: 789, # Integer | only return collections from this group
  resource_doi: "resource_doi_example", # String | only return collections with this resource_doi
  item_type: 789, # Integer | Only return collections with the respective type. Mapping for item_type is: 1 - Figure, 2 - Media, 3 - Dataset, 4 - Fileset, 5 - Poster, 6 - Paper, 7 - Presentation, 8 - Thesis, 9 - Code, 12 - Preprint
  doi: "doi_example" # String | only return collections with this doi
}

begin
  #Public Articles
  result = api_instance.articles_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->articles_list: #{e}"
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
 **published_since** | **String**| Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **modified_since** | **String**| Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **group** | **Integer**| only return collections from this group | [optional] 
 **resource_doi** | **String**| only return collections with this resource_doi | [optional] 
 **item_type** | **Integer**| Only return collections with the respective type. Mapping for item_type is: 1 - Figure, 2 - Media, 3 - Dataset, 4 - Fileset, 5 - Poster, 6 - Paper, 7 - Presentation, 8 - Thesis, 9 - Code, 12 - Preprint | [optional] 
 **doi** | **String**| only return collections with this doi | [optional] 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **articles_search**
> Array&lt;Article&gt; articles_search(opts)

Public Articles Search

Returns a list of public articles, filtered by the search parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ArticlesApi.new

opts = { 
  search: SwaggerClient::ArticleSearch.new # ArticleSearch | Search Parameters
}

begin
  #Public Articles Search
  result = api_instance.articles_search(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->articles_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**ArticleSearch**](ArticleSearch.md)| Search Parameters | [optional] 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_author_delete**
> private_article_author_delete(article_id, author_id)

Delete article author

De-associate author from article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

author_id = 789 # Integer | Article Author unique identifier


begin
  #Delete article author
  api_instance.private_article_author_delete(article_id, author_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_author_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **author_id** | **Integer**| Article Author unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_authors_add**
> private_article_authors_add(article_id, authors)

Add article authors

Associate new authors with the article. This will add new authors to the list of already associated authors

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

authors = SwaggerClient::AuthorsCreator.new # AuthorsCreator | Authors description


begin
  #Add article authors
  api_instance.private_article_authors_add(article_id, authors)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_authors_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **authors** | [**AuthorsCreator**](AuthorsCreator.md)| Authors description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_authors_list**
> Array&lt;Author&gt; private_article_authors_list(article_id, )

List article authors

List article authors

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #List article authors
  result = api_instance.private_article_authors_list(article_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_authors_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**Array&lt;Author&gt;**](Author.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_authors_replace**
> private_article_authors_replace(article_id, authors)

Replace article authors

Associate new authors with the article. This will remove all already associated authors and add these new ones

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

authors = SwaggerClient::AuthorsCreator.new # AuthorsCreator | Authors description


begin
  #Replace article authors
  api_instance.private_article_authors_replace(article_id, authors)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_authors_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **authors** | [**AuthorsCreator**](AuthorsCreator.md)| Authors description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_categories_add**
> private_article_categories_add(article_id, categories)

Add article categories

Associate new categories with the article. This will add new categories to the list of already associated categories

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

categories = SwaggerClient::CategoriesCreator.new # CategoriesCreator | 


begin
  #Add article categories
  api_instance.private_article_categories_add(article_id, categories)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_categories_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **categories** | [**CategoriesCreator**](CategoriesCreator.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_categories_list**
> Array&lt;Category&gt; private_article_categories_list(article_id, )

List article categories

List article categories

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #List article categories
  result = api_instance.private_article_categories_list(article_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_categories_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_categories_replace**
> private_article_categories_replace(article_id, categories)

Replace article categories

Associate new categories with the article. This will remove all already associated categories and add these new ones

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

categories = SwaggerClient::CategoriesCreator.new # CategoriesCreator | 


begin
  #Replace article categories
  api_instance.private_article_categories_replace(article_id, categories)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_categories_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **categories** | [**CategoriesCreator**](CategoriesCreator.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_category_delete**
> private_article_category_delete(article_id, category_id)

Delete article category

De-associate category from article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

category_id = 789 # Integer | Category unique identifier


begin
  #Delete article category
  api_instance.private_article_category_delete(article_id, category_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_category_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **category_id** | **Integer**| Category unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_confidentiality_delete**
> private_article_confidentiality_delete(article_id)

Delete article confidentiality

Delete confidentiality settings

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Delete article confidentiality
  api_instance.private_article_confidentiality_delete(article_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_confidentiality_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_confidentiality_details**
> ArticleConfidentiality private_article_confidentiality_details(article_id)

Article confidentiality details

View confidentiality settings

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Article confidentiality details
  result = api_instance.private_article_confidentiality_details(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_confidentiality_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**ArticleConfidentiality**](ArticleConfidentiality.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_confidentiality_update**
> private_article_confidentiality_update(article_idreason)

Update article confidentiality

Update confidentiality settings

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

reason = SwaggerClient::ConfidentialityCreator.new # ConfidentialityCreator | 


begin
  #Update article confidentiality
  api_instance.private_article_confidentiality_update(article_idreason)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_confidentiality_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **reason** | [**ConfidentialityCreator**](ConfidentialityCreator.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_create**
> Location private_article_create(article)

Create new Article

Create a new Article by sending article information

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article = SwaggerClient::ArticleCreate.new # ArticleCreate | Article description


begin
  #Create new Article
  result = api_instance.private_article_create(article)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article** | [**ArticleCreate**](ArticleCreate.md)| Article description | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_delete**
> private_article_delete(article_id)

Delete article

Delete an article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Delete article
  api_instance.private_article_delete(article_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_details**
> ArticleCompletePrivate private_article_details(article_id)

Article details

View a private article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Article details
  result = api_instance.private_article_details(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**ArticleCompletePrivate**](ArticleCompletePrivate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_embargo_delete**
> private_article_embargo_delete(article_id)

Delete Article Embargo

Will lift the embargo for the specified article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Delete Article Embargo
  api_instance.private_article_embargo_delete(article_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_embargo_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_embargo_details**
> ArticleEmbargo private_article_embargo_details(article_id)

Article Embargo Details

View a private article embargo details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Article Embargo Details
  result = api_instance.private_article_embargo_details(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_embargo_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**ArticleEmbargo**](ArticleEmbargo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_embargo_update**
> private_article_embargo_update(article_idembargo)

Update Article Embargo

Note: setting an article under whole embargo does not imply that the article will be published when the embargo will expire. You must explicitly call the publish endpoint to enable this functionality.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

embargo = SwaggerClient::ArticleEmbargoUpdater.new # ArticleEmbargoUpdater | Embargo description


begin
  #Update Article Embargo
  api_instance.private_article_embargo_update(article_idembargo)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_embargo_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **embargo** | [**ArticleEmbargoUpdater**](ArticleEmbargoUpdater.md)| Embargo description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_file**
> PrivateFile private_article_file(article_id, file_id)

Single File

View details of file for specified article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

file_id = 789 # Integer | File unique identifier


begin
  #Single File
  result = api_instance.private_article_file(article_id, file_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **file_id** | **Integer**| File unique identifier | 

### Return type

[**PrivateFile**](PrivateFile.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_file_delete**
> private_article_file_delete(article_id, file_id)

File Delete

Complete file upload

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

file_id = 789 # Integer | File unique identifier


begin
  #File Delete
  api_instance.private_article_file_delete(article_id, file_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_file_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **file_id** | **Integer**| File unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_files_list**
> Array&lt;PrivateFile&gt; private_article_files_list(article_id, )

List article files

List private files

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #List article files
  result = api_instance.private_article_files_list(article_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**Array&lt;PrivateFile&gt;**](PrivateFile.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_private_link**
> Array&lt;PrivateLink&gt; private_article_private_link(article_id)

List private links

List private links

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #List private links
  result = api_instance.private_article_private_link(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_private_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**Array&lt;PrivateLink&gt;**](PrivateLink.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_private_link_create**
> Location private_article_private_link_create(article_id, opts)

Create private link

Create new private link for this article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

opts = { 
  private_link: SwaggerClient::PrivateLinkCreator.new # PrivateLinkCreator | 
}

begin
  #Create private link
  result = api_instance.private_article_private_link_create(article_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_private_link_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **private_link** | [**PrivateLinkCreator**](PrivateLinkCreator.md)|  | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_private_link_delete**
> private_article_private_link_delete(article_id, link_id)

Disable private link

Disable/delete private link for this article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

link_id = "link_id_example" # String | Private link token


begin
  #Disable private link
  api_instance.private_article_private_link_delete(article_id, link_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_private_link_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **link_id** | **String**| Private link token | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_private_link_update**
> private_article_private_link_update(article_id, link_id, opts)

Update private link

Update existing private link for this article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

link_id = "link_id_example" # String | Private link token

opts = { 
  private_link: SwaggerClient::PrivateLinkCreator.new # PrivateLinkCreator | 
}

begin
  #Update private link
  api_instance.private_article_private_link_update(article_id, link_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_private_link_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **link_id** | **String**| Private link token | 
 **private_link** | [**PrivateLinkCreator**](PrivateLinkCreator.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_publish**
> Location private_article_publish(article_id)

Private Article Publish

- If the whole article is under embargo, it will not be published immediatly, but when the embargo expires or is lifted. - When an article is published, a new public version will be generated. Any further updates to the article will affect the private article data. In order to make these changes publicly visible, an explicit publish operation is needed.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Private Article Publish
  result = api_instance.private_article_publish(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_publish: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_reserve_doi**
> ArticleDOI private_article_reserve_doi(article_id)

Private Article Reserve DOI

Reserve DOI for article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier


begin
  #Private Article Reserve DOI
  result = api_instance.private_article_reserve_doi(article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_reserve_doi: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 

### Return type

[**ArticleDOI**](ArticleDOI.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_update**
> private_article_update(article_idarticle)

Update article

Updating an article by passing body parameters

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

article = SwaggerClient::ArticleUpdate.new # ArticleUpdate | Article description


begin
  #Update article
  api_instance.private_article_update(article_idarticle)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **article** | [**ArticleUpdate**](ArticleUpdate.md)| Article description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_upload_complete**
> private_article_upload_complete(article_id, file_id)

Complete Upload

Complete file upload

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

file_id = 789 # Integer | File unique identifier


begin
  #Complete Upload
  api_instance.private_article_upload_complete(article_id, file_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_upload_complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **file_id** | **Integer**| File unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_article_upload_initiate**
> Location private_article_upload_initiate(article_id, file)

Initiate Upload

Initiate new file upload within the article. Either use link to provide only an existing file that will not be uploaded on figshare or use the other 3 parameters(md5, name, size)

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

article_id = 789 # Integer | Article unique identifier

file = SwaggerClient::FileCreator.new # FileCreator | 


begin
  #Initiate Upload
  result = api_instance.private_article_upload_initiate(article_id, file)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_article_upload_initiate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article_id** | **Integer**| Article unique identifier | 
 **file** | [**FileCreator**](FileCreator.md)|  | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_articles_list**
> Array&lt;Article&gt; private_articles_list(opts)

Private Articles

Get Own Articles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789 # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
}

begin
  #Private Articles
  result = api_instance.private_articles_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_articles_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_articles_search**
> Array&lt;Article&gt; private_articles_search(search)

Private Articles search

Returns a list of private articles filtered by the search parameters

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ArticlesApi.new

search = SwaggerClient::PrivateArticleSearch.new # PrivateArticleSearch | Search Parameters


begin
  #Private Articles search
  result = api_instance.private_articles_search(search)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->private_articles_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**PrivateArticleSearch**](PrivateArticleSearch.md)| Search Parameters | 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



