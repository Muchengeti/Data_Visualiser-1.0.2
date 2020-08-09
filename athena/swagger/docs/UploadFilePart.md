# SwaggerClient::UploadFilePart

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**part_no** | **Integer** | File part id | [optional] 
**start_offset** | **Integer** | Indexes on byte range. zero-based and inclusive | [optional] 
**end_offset** | **Integer** | Indexes on byte range. zero-based and inclusive | [optional] 
**status** | **String** | part status | [optional] 
**locked** | **BOOLEAN** | When a part is being uploaded it is being locked, by setting the locked flag to true. No changes/uploads can happen on this part from other requests. | [optional] 


