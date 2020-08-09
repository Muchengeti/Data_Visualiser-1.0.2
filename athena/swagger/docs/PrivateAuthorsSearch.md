# SwaggerClient::PrivateAuthorsSearch

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
**institution_id** | **Integer** | Return only authors associated to this institution | [optional] 
**orcid** | **String** | Orcid of author | [optional] 
**group_id** | **Integer** | Return only authors in this group or subgroups of the group | [optional] 
**is_active** | **BOOLEAN** | Return only active authors if True | [optional] 
**is_public** | **BOOLEAN** | Return only authors that have published items if True | [optional] 


