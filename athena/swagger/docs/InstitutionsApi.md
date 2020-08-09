# SwaggerClient::InstitutionsApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**institution_articles**](InstitutionsApi.md#institution_articles) | **GET** /institutions/{institution_string_id}/articles/filter-by | Public Licenses
[**institution_hrfeed_upload**](InstitutionsApi.md#institution_hrfeed_upload) | **POST** /institution/hrfeed/upload | Private Institution HRfeed Upload
[**private_account_institution_user**](InstitutionsApi.md#private_account_institution_user) | **GET** /account/institution/users/{account_id} | Private Account Institution User
[**private_categories_list**](InstitutionsApi.md#private_categories_list) | **GET** /account/categories | Private Account Categories
[**private_institution_account_group_role_delete**](InstitutionsApi.md#private_institution_account_group_role_delete) | **DELETE** /account/institution/roles/{account_id}/{group_id}/{role_id} | Delete Institution Account Group Role
[**private_institution_account_group_roles**](InstitutionsApi.md#private_institution_account_group_roles) | **GET** /account/institution/roles/{account_id} | List Institution Account Group Roles
[**private_institution_account_group_roles_create**](InstitutionsApi.md#private_institution_account_group_roles_create) | **POST** /account/institution/roles/{account_id} | Add Institution Account Group Roles
[**private_institution_accounts_create**](InstitutionsApi.md#private_institution_accounts_create) | **POST** /account/institution/accounts | Create new Institution Account
[**private_institution_accounts_list**](InstitutionsApi.md#private_institution_accounts_list) | **GET** /account/institution/accounts | Private Account Institution Accounts
[**private_institution_accounts_search**](InstitutionsApi.md#private_institution_accounts_search) | **POST** /account/institution/accounts/search | Private Account Institution Accounts Search
[**private_institution_accounts_update**](InstitutionsApi.md#private_institution_accounts_update) | **PUT** /account/institution/accounts/{account_id} | Update Institution Account
[**private_institution_articles**](InstitutionsApi.md#private_institution_articles) | **GET** /account/institution/articles | Private Institution Articles
[**private_institution_details**](InstitutionsApi.md#private_institution_details) | **GET** /account/institution | Private Account Institutions
[**private_institution_groups_list**](InstitutionsApi.md#private_institution_groups_list) | **GET** /account/institution/groups | Private Account Institution Groups
[**private_institution_roles_list**](InstitutionsApi.md#private_institution_roles_list) | **GET** /account/institution/roles | Private Account Institution Roles


# **institution_articles**
> Array&lt;Article&gt; institution_articles(institution_string_id, resource_id, filename)

Public Licenses

Returns a list of articles belonging to the institution

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InstitutionsApi.new

institution_string_id = "institution_string_id_example" # String | 

resource_id = "resource_id_example" # String | 

filename = "filename_example" # String | 


begin
  #Public Licenses
  result = api_instance.institution_articles(institution_string_id, resource_id, filename)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->institution_articles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **institution_string_id** | **String**|  | 
 **resource_id** | **String**|  | 
 **filename** | **String**|  | 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **institution_hrfeed_upload**
> ResponseMessage institution_hrfeed_upload(opts)

Private Institution HRfeed Upload

More info in the <a href=\"#hr_feed\">HR Feed section</a>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

opts = { 
  hrfeed: File.new("/path/to/file.txt") # File | You can find an example in the Hr Feed section
}

begin
  #Private Institution HRfeed Upload
  result = api_instance.institution_hrfeed_upload(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->institution_hrfeed_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hrfeed** | **File**| You can find an example in the Hr Feed section | [optional] 

### Return type

[**ResponseMessage**](ResponseMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **private_account_institution_user**
> User private_account_institution_user(account_id)

Private Account Institution User

Retrieve institution user information using the account_id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account_id = 789 # Integer | Account identifier the user is associated to


begin
  #Private Account Institution User
  result = api_instance.private_account_institution_user(account_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_account_institution_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account identifier the user is associated to | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_categories_list**
> Array&lt;Category&gt; private_categories_list

Private Account Categories

List institution categories (including parent Categories)

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

begin
  #Private Account Categories
  result = api_instance.private_categories_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_categories_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_account_group_role_delete**
> private_institution_account_group_role_delete(account_id, group_id, role_id)

Delete Institution Account Group Role

Delete Institution Account Group Role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account_id = 789 # Integer | Account identifier for which to remove the role

group_id = 789 # Integer | Group identifier for which to remove the role

role_id = 789 # Integer | Role identifier


begin
  #Delete Institution Account Group Role
  api_instance.private_institution_account_group_role_delete(account_id, group_id, role_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_account_group_role_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account identifier for which to remove the role | 
 **group_id** | **Integer**| Group identifier for which to remove the role | 
 **role_id** | **Integer**| Role identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_account_group_roles**
> AccountGroupRoles private_institution_account_group_roles(account_id, )

List Institution Account Group Roles

List Institution Account Group Roles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account_id = 789 # Integer | Account identifier the user is associated to


begin
  #List Institution Account Group Roles
  result = api_instance.private_institution_account_group_roles(account_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_account_group_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account identifier the user is associated to | 

### Return type

[**AccountGroupRoles**](AccountGroupRoles.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_account_group_roles_create**
> private_institution_account_group_roles_create(account_id, account)

Add Institution Account Group Roles

Add Institution Account Group Roles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account_id = 789 # Integer | Account identifier the user is associated to

account = SwaggerClient::AccountGroupRolesCreate.new # AccountGroupRolesCreate | Account description


begin
  #Add Institution Account Group Roles
  api_instance.private_institution_account_group_roles_create(account_id, account)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_account_group_roles_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account identifier the user is associated to | 
 **account** | [**AccountGroupRolesCreate**](AccountGroupRolesCreate.md)| Account description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_accounts_create**
> private_institution_accounts_create(account)

Create new Institution Account

Create a new Account by sending account information

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account = SwaggerClient::AccountCreate.new # AccountCreate | Account description


begin
  #Create new Institution Account
  api_instance.private_institution_accounts_create(account)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_accounts_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**AccountCreate**](AccountCreate.md)| Account description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_accounts_list**
> Array&lt;ShortAccount&gt; private_institution_accounts_list(opts)

Private Account Institution Accounts

Returns the accounts for which the account has administrative privileges (assigned and inherited).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  is_active: 789, # Integer | Filter by active status
  institution_user_id: "institution_user_id_example", # String | Filter by institution_user_id
  email: "email_example" # String | Filter by email
}

begin
  #Private Account Institution Accounts
  result = api_instance.private_institution_accounts_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_accounts_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 
 **is_active** | **Integer**| Filter by active status | [optional] 
 **institution_user_id** | **String**| Filter by institution_user_id | [optional] 
 **email** | **String**| Filter by email | [optional] 

### Return type

[**Array&lt;ShortAccount&gt;**](ShortAccount.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_accounts_search**
> Array&lt;ShortAccount&gt; private_institution_accounts_search(search)

Private Account Institution Accounts Search

Returns the accounts for which the account has administrative privileges (assigned and inherited).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

search = SwaggerClient::InstitutionAccountsSearch.new # InstitutionAccountsSearch | Search Parameters


begin
  #Private Account Institution Accounts Search
  result = api_instance.private_institution_accounts_search(search)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_accounts_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**InstitutionAccountsSearch**](InstitutionAccountsSearch.md)| Search Parameters | 

### Return type

[**Array&lt;ShortAccount&gt;**](ShortAccount.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_accounts_update**
> private_institution_accounts_update(account_id, account)

Update Institution Account

Update Institution Account

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

account_id = 789 # Integer | Account identifier the user is associated to

account = SwaggerClient::AccountUpdate.new # AccountUpdate | Account description


begin
  #Update Institution Account
  api_instance.private_institution_accounts_update(account_id, account)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_accounts_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **Integer**| Account identifier the user is associated to | 
 **account** | [**AccountUpdate**](AccountUpdate.md)| Account description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_articles**
> Array&lt;Article&gt; private_institution_articles(opts)

Private Institution Articles

Get Articles from own institution. User must be administrator of the institution

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc", # String | 
  published_since: "published_since_example", # String | Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  modified_since: "modified_since_example", # String | Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  status: 789, # Integer | only return collections with this status
  resource_doi: "resource_doi_example", # String | only return collections with this resource_doi
  item_type: 789 # Integer | Only return collections with the respective type. Mapping for item_type is: 1 - Figure, 2 - Media, 3 - Dataset, 4 - Fileset, 5 - Poster, 6 - Paper, 7 - Presentation, 8 - Thesis, 9 - Code, 12 - Preprint
}

begin
  #Private Institution Articles
  result = api_instance.private_institution_articles(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_articles: #{e}"
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
 **published_since** | **String**| Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **modified_since** | **String**| Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
 **status** | **Integer**| only return collections with this status | [optional] 
 **resource_doi** | **String**| only return collections with this resource_doi | [optional] 
 **item_type** | **Integer**| Only return collections with the respective type. Mapping for item_type is: 1 - Figure, 2 - Media, 3 - Dataset, 4 - Fileset, 5 - Poster, 6 - Paper, 7 - Presentation, 8 - Thesis, 9 - Code, 12 - Preprint | [optional] 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_details**
> Institution private_institution_details

Private Account Institutions

Account institution details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

begin
  #Private Account Institutions
  result = api_instance.private_institution_details
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_details: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Institution**](Institution.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_groups_list**
> Array&lt;Group&gt; private_institution_groups_list

Private Account Institution Groups

Returns the groups for which the account has administrative privileges (assigned and inherited).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

begin
  #Private Account Institution Groups
  result = api_instance.private_institution_groups_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_groups_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Group&gt;**](Group.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_institution_roles_list**
> Array&lt;Role&gt; private_institution_roles_list

Private Account Institution Roles

Returns the roles available for groups and the institution group.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::InstitutionsApi.new

begin
  #Private Account Institution Roles
  result = api_instance.private_institution_roles_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstitutionsApi->private_institution_roles_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Role&gt;**](Role.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



