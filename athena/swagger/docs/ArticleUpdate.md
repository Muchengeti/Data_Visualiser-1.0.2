# SwaggerClient::ArticleUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Title of article | [optional] 
**description** | **String** | The article description. In a publisher case, usually this is the remote article description | [optional] [default to &quot;&quot;]
**tags** | **Array&lt;String&gt;** | List of tags to be associated with the article. Keywords can be used instead | [optional] 
**keywords** | **Array&lt;String&gt;** | List of tags to be associated with the article. Tags can be used instead | [optional] 
**references** | **Array&lt;String&gt;** | List of links to be associated with the article (e.g [\&quot;http://link1\&quot;, \&quot;http://link2\&quot;, \&quot;http://link3\&quot;]) | [optional] 
**categories** | **Array&lt;Integer&gt;** | List of category ids to be associated with the article(e.g [1, 23, 33, 66]) | [optional] 
**authors** | **Array&lt;Object&gt;** | List of authors to be assosciated with the article. The list can contain author ids or author names. No more than 10 authors. For adding more authors use the specific authors endpoint. | [optional] 
**custom_fields** | **Object** | List of key, values pairs to be associated with the article | [optional] 
**defined_type** | **String** | Article type | [optional] 
**funding** | **String** | Grant number or funding authority | [optional] [default to &quot;&quot;]
**license** | **Integer** | License id for this article. | [optional] [default to 0]
**doi** | **String** | Not appliable for regular users. In an institutional case, make sure your group supports setting DOIs. This setting is applied by figshare via opening a ticket through our support/helpdesk system. | [optional] [default to &quot;&quot;]
**resource_doi** | **String** | Not applicable to regular users. In a publisher case, this is the publisher article DOI. | [optional] [default to &quot;&quot;]
**resource_title** | **String** | Not applicable to regular users. In a publisher case, this is the publisher article title. | [optional] [default to &quot;&quot;]
**group_id** | **Integer** | Not applicable to regular users. This field is reserved to institutions/publishers with access to assign to specific groups | [optional] 


