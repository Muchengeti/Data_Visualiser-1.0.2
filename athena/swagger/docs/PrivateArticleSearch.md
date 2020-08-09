# SwaggerClient::PrivateArticleSearch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search_for** | **String** | Search term | [optional] 
**page** | **Integer** | Page number. Used for pagination with page_size | [optional] 
**page_size** | **Integer** | The number of results included on a page. Used for pagination with page | [optional] [default to 10]
**limit** | **Integer** | Number of results included on a page. Used for pagination with query | [optional] 
**offset** | **Integer** | Where to start the listing(the offset of the first result). Used for pagination with limit | [optional] 
**order** | **String** | The field by which to order. Default varies by endpoint/resource. | [optional] [default to &quot;published_date&quot;]
**order_direction** | **String** | Direction of ordering | [optional] [default to &quot;desc&quot;]
**institution** | **Integer** | only return collections from this institution | [optional] 
**published_since** | **String** | Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
**modified_since** | **String** | Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD | [optional] 
**group** | **Integer** | only return collections from this group | [optional] 


