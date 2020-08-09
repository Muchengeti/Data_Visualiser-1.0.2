# SwaggerClient::ProjectsApi

All URIs are relative to *https://api.figshare.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**private_project_article_delete**](ProjectsApi.md#private_project_article_delete) | **DELETE** /account/projects/{project_id}/articles/{article_id} | Delete project article
[**private_project_article_details**](ProjectsApi.md#private_project_article_details) | **GET** /account/projects/{project_id}/articles/{article_id} | Project article details
[**private_project_article_file**](ProjectsApi.md#private_project_article_file) | **GET** /account/projects/{project_id}/articles/{article_id}/files/{file_id} | Project article file details
[**private_project_article_files**](ProjectsApi.md#private_project_article_files) | **GET** /account/projects/{project_id}/articles/{article_id}/files | Project article list files
[**private_project_articles_create**](ProjectsApi.md#private_project_articles_create) | **POST** /account/projects/{project_id}/articles | Create project article
[**private_project_articles_list**](ProjectsApi.md#private_project_articles_list) | **GET** /account/projects/{project_id}/articles | List project articles
[**private_project_collaborator_delete**](ProjectsApi.md#private_project_collaborator_delete) | **DELETE** /account/projects/{project_id}/collaborators/{user_id} | Remove project collaborator
[**private_project_collaborators_invite**](ProjectsApi.md#private_project_collaborators_invite) | **POST** /account/projects/{project_id}/collaborators | Invite project collaborators
[**private_project_collaborators_list**](ProjectsApi.md#private_project_collaborators_list) | **GET** /account/projects/{project_id}/collaborators | List project collaborators
[**private_project_create**](ProjectsApi.md#private_project_create) | **POST** /account/projects | Create project
[**private_project_delete**](ProjectsApi.md#private_project_delete) | **DELETE** /account/projects/{project_id} | Delete project
[**private_project_details**](ProjectsApi.md#private_project_details) | **GET** /account/projects/{project_id} | View project details
[**private_project_leave**](ProjectsApi.md#private_project_leave) | **POST** /account/projects/{project_id}/leave | Private Project Leave
[**private_project_note**](ProjectsApi.md#private_project_note) | **GET** /account/projects/{project_id}/notes/{note_id} | Project note details
[**private_project_note_delete**](ProjectsApi.md#private_project_note_delete) | **DELETE** /account/projects/{project_id}/notes/{note_id} | Delete project note
[**private_project_note_update**](ProjectsApi.md#private_project_note_update) | **PUT** /account/projects/{project_id}/notes/{note_id} | Update project note
[**private_project_notes_create**](ProjectsApi.md#private_project_notes_create) | **POST** /account/projects/{project_id}/notes | Create project note
[**private_project_notes_list**](ProjectsApi.md#private_project_notes_list) | **GET** /account/projects/{project_id}/notes | List project notes
[**private_project_publish**](ProjectsApi.md#private_project_publish) | **POST** /account/projects/{project_id}/publish | Private Project Publish
[**private_project_update**](ProjectsApi.md#private_project_update) | **PUT** /account/projects/{project_id} | Update project
[**private_projects_list**](ProjectsApi.md#private_projects_list) | **GET** /account/projects | Private Projects
[**private_projects_search**](ProjectsApi.md#private_projects_search) | **POST** /account/projects/search | Private Projects search
[**project_articles**](ProjectsApi.md#project_articles) | **GET** /projects/{project_id}/articles | Public Project Articles
[**project_details**](ProjectsApi.md#project_details) | **GET** /projects/{project_id} | Public Project
[**projects_list**](ProjectsApi.md#projects_list) | **GET** /projects | Public Projects
[**projects_search**](ProjectsApi.md#projects_search) | **POST** /projects/search | Public Projects Search


# **private_project_article_delete**
> private_project_article_delete(project_id, article_id)

Delete project article

Delete project article

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

article_id = 789 # Integer | Project Article unique identifier


begin
  #Delete project article
  api_instance.private_project_article_delete(project_id, article_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_article_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **article_id** | **Integer**| Project Article unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_article_details**
> ProjectArticle private_project_article_details(project_id, article_id)

Project article details

Project article details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

article_id = 789 # Integer | Project Article unique identifier


begin
  #Project article details
  result = api_instance.private_project_article_details(project_id, article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_article_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **article_id** | **Integer**| Project Article unique identifier | 

### Return type

[**ProjectArticle**](ProjectArticle.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_article_file**
> PrivateFile private_project_article_file(project_id, article_id, file_id)

Project article file details

Project article file details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

article_id = 789 # Integer | Project Article unique identifier

file_id = 789 # Integer | File unique identifier


begin
  #Project article file details
  result = api_instance.private_project_article_file(project_id, article_id, file_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_article_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **article_id** | **Integer**| Project Article unique identifier | 
 **file_id** | **Integer**| File unique identifier | 

### Return type

[**PrivateFile**](PrivateFile.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_article_files**
> Array&lt;PrivateFile&gt; private_project_article_files(project_id, article_id)

Project article list files

List article files

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

article_id = 789 # Integer | Project Article unique identifier


begin
  #Project article list files
  result = api_instance.private_project_article_files(project_id, article_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_article_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **article_id** | **Integer**| Project Article unique identifier | 

### Return type

[**Array&lt;PrivateFile&gt;**](PrivateFile.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_articles_create**
> Location private_project_articles_create(project_id, article)

Create project article

Create a new Article and associate it with this project

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Proejct unique identifier

article = SwaggerClient::ArticleCreate.new # ArticleCreate | Article description


begin
  #Create project article
  result = api_instance.private_project_articles_create(project_id, article)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_articles_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Proejct unique identifier | 
 **article** | [**ArticleCreate**](ArticleCreate.md)| Article description | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_articles_list**
> Array&lt;Article&gt; private_project_articles_list(project_id, )

List project articles

List project articles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Proejct unique identifier


begin
  #List project articles
  result = api_instance.private_project_articles_list(project_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_articles_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Proejct unique identifier | 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_collaborator_delete**
> private_project_collaborator_delete(project_id, user_id)

Remove project collaborator

Remove project collaborator

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

user_id = 789 # Integer | User unique identifier


begin
  #Remove project collaborator
  api_instance.private_project_collaborator_delete(project_id, user_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_collaborator_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **user_id** | **Integer**| User unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_collaborators_invite**
> ResponseMessage private_project_collaborators_invite(project_id, collaborator)

Invite project collaborators

Invite users to collaborate on project or view the project

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

collaborator = SwaggerClient::ProjectCollaboratorInvite.new # ProjectCollaboratorInvite | viewer or collaborator role. User user_id or email of user


begin
  #Invite project collaborators
  result = api_instance.private_project_collaborators_invite(project_id, collaborator)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_collaborators_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **collaborator** | [**ProjectCollaboratorInvite**](ProjectCollaboratorInvite.md)| viewer or collaborator role. User user_id or email of user | 

### Return type

[**ResponseMessage**](ResponseMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_collaborators_list**
> Array&lt;ProjectCollaborator&gt; private_project_collaborators_list(project_id, )

List project collaborators

List Project collaborators and invited users

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier


begin
  #List project collaborators
  result = api_instance.private_project_collaborators_list(project_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_collaborators_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 

### Return type

[**Array&lt;ProjectCollaborator&gt;**](ProjectCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_create**
> Location private_project_create(project)

Create project

Create a new project

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project = SwaggerClient::ProjectCreate.new # ProjectCreate | Project  description


begin
  #Create project
  result = api_instance.private_project_create(project)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**ProjectCreate**](ProjectCreate.md)| Project  description | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_delete**
> private_project_delete(project_id)

Delete project

A project can be deleted only if: - it is not public - it does not have public articles.  When an individual project is deleted, all the articles are moved to my data of each owner.  When a group project is deleted, all the articles and files are deleted as well. Only project owner, group admin and above can delete a project. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier


begin
  #Delete project
  api_instance.private_project_delete(project_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_details**
> ProjectCompletePrivate private_project_details(project_id)

View project details

View a private project

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier


begin
  #View project details
  result = api_instance.private_project_details(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 

### Return type

[**ProjectCompletePrivate**](ProjectCompletePrivate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_leave**
> private_project_leave(project_id)

Private Project Leave

Please note: project's owner cannot leave the project.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier


begin
  #Private Project Leave
  api_instance.private_project_leave(project_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_leave: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_note**
> ProjectNotePrivate private_project_note(project_id, note_id)

Project note details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

note_id = 789 # Integer | Note unique identifier


begin
  #Project note details
  result = api_instance.private_project_note(project_id, note_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **note_id** | **Integer**| Note unique identifier | 

### Return type

[**ProjectNotePrivate**](ProjectNotePrivate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_note_delete**
> private_project_note_delete(project_id, note_id)

Delete project note

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

note_id = 789 # Integer | Note unique identifier


begin
  #Delete project note
  api_instance.private_project_note_delete(project_id, note_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_note_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **note_id** | **Integer**| Note unique identifier | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_note_update**
> private_project_note_update(project_id, note_idnote)

Update project note

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

note_id = 789 # Integer | Note unique identifier

note = SwaggerClient::ProjectNoteCreate.new # ProjectNoteCreate | Note message


begin
  #Update project note
  api_instance.private_project_note_update(project_id, note_idnote)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_note_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **note_id** | **Integer**| Note unique identifier | 
 **note** | [**ProjectNoteCreate**](ProjectNoteCreate.md)| Note message | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_notes_create**
> Location private_project_notes_create(project_id, note)

Create project note

Create a new project note

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

note = SwaggerClient::ProjectNoteCreate.new # ProjectNoteCreate | Note message


begin
  #Create project note
  result = api_instance.private_project_notes_create(project_id, note)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_notes_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **note** | [**ProjectNoteCreate**](ProjectNoteCreate.md)| Note message | 

### Return type

[**Location**](Location.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_notes_list**
> Array&lt;ProjectNote&gt; private_project_notes_list(project_id, , opts)

List project notes

List project notes

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789 # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
}

begin
  #List project notes
  result = api_instance.private_project_notes_list(project_id, , opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_notes_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **page** | **Integer**| Page number. Used for pagination with page_size | [optional] 
 **page_size** | **Integer**| The number of results included on a page. Used for pagination with page | [optional] [default to 10]
 **limit** | **Integer**| Number of results included on a page. Used for pagination with query | [optional] 
 **offset** | **Integer**| Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 

### Return type

[**Array&lt;ProjectNote&gt;**](ProjectNote.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_publish**
> ResponseMessage private_project_publish(project_id)

Private Project Publish

Publish a project. Possible after all items inside it are public

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier


begin
  #Private Project Publish
  result = api_instance.private_project_publish(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_publish: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 

### Return type

[**ResponseMessage**](ResponseMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_project_update**
> private_project_update(project_idproject)

Update project

Updating an project by passing body parameters

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project unique identifier

project = SwaggerClient::ProjectUpdate.new # ProjectUpdate | Project description


begin
  #Update project
  api_instance.private_project_update(project_idproject)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_project_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project unique identifier | 
 **project** | [**ProjectUpdate**](ProjectUpdate.md)| Project description | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_projects_list**
> Array&lt;ProjectPrivate&gt; private_projects_list(opts)

Private Projects

List private projects

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ProjectsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc", # String | 
  storage: "storage_example", # String | only return collections from this institution
  roles: "roles_example" # String | Any combination of owner, collaborator, viewer separated by comma. Examples: \"owner\" or \"owner,collaborator\".
}

begin
  #Private Projects
  result = api_instance.private_projects_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_projects_list: #{e}"
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
 **storage** | **String**| only return collections from this institution | [optional] 
 **roles** | **String**| Any combination of owner, collaborator, viewer separated by comma. Examples: \&quot;owner\&quot; or \&quot;owner,collaborator\&quot;. | [optional] 

### Return type

[**Array&lt;ProjectPrivate&gt;**](ProjectPrivate.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **private_projects_search**
> Array&lt;ProjectPrivate&gt; private_projects_search(opts)

Private Projects search

Search inside the private projects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsApi.new

opts = { 
  search: SwaggerClient::CommonSearch.new # CommonSearch | Search Parameters
}

begin
  #Private Projects search
  result = api_instance.private_projects_search(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->private_projects_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**CommonSearch**](CommonSearch.md)| Search Parameters | [optional] 

### Return type

[**Array&lt;ProjectPrivate&gt;**](ProjectPrivate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_articles**
> Array&lt;Article&gt; project_articles(project_id)

Public Project Articles

List articles in project

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project Unique identifier


begin
  #Public Project Articles
  result = api_instance.project_articles(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->project_articles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project Unique identifier | 

### Return type

[**Array&lt;Article&gt;**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_details**
> ProjectComplete project_details(project_id)

Public Project

View a project

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsApi.new

project_id = 789 # Integer | Project Unique identifier


begin
  #Public Project
  result = api_instance.project_details(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->project_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| Project Unique identifier | 

### Return type

[**ProjectComplete**](ProjectComplete.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **projects_list**
> Array&lt;Project&gt; projects_list(opts)

Public Projects

Returns a list of public projects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsApi.new

opts = { 
  page: 789, # Integer | Page number. Used for pagination with page_size
  page_size: 10, # Integer | The number of results included on a page. Used for pagination with page
  limit: 789, # Integer | Number of results included on a page. Used for pagination with query
  offset: 789, # Integer | Where to start the listing(the offset of the first result). Used for pagination with limit
  order: "published_date", # String | The field by which to order. Default varies by endpoint/resource.
  order_direction: "desc", # String | 
  institution: 789, # Integer | only return collections from this institution
  published_since: "published_since_example", # String | Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  group: 789 # Integer | only return collections from this group
}

begin
  #Public Projects
  result = api_instance.projects_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_list: #{e}"
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
 **group** | **Integer**| only return collections from this group | [optional] 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **projects_search**
> Array&lt;Project&gt; projects_search(opts)

Public Projects Search

Returns a list of public articles

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsApi.new

opts = { 
  search: SwaggerClient::CommonSearch.new # CommonSearch | Search Parameters
}

begin
  #Public Projects Search
  result = api_instance.projects_search(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsApi->projects_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**CommonSearch**](CommonSearch.md)| Search Parameters | [optional] 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



