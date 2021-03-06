=begin
#Figshare API

#Figshare apiv2. Using Swagger 2.0

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CollectionPrivateLinkCreator
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CollectionPrivateLinkCreator' do
  before do
    # run before each test
    @instance = SwaggerClient::CollectionPrivateLinkCreator.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CollectionPrivateLinkCreator' do
    it 'should create an instance of CollectionPrivateLinkCreator' do
      expect(@instance).to be_instance_of(SwaggerClient::CollectionPrivateLinkCreator)
    end
  end
  describe 'test attribute "expires_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "read_only"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

