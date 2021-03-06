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

# Unit tests for SwaggerClient::ArticleEmbargoUpdater
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ArticleEmbargoUpdater' do
  before do
    # run before each test
    @instance = SwaggerClient::ArticleEmbargoUpdater.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ArticleEmbargoUpdater' do
    it 'should create an instance of ArticleEmbargoUpdater' do
      expect(@instance).to be_instance_of(SwaggerClient::ArticleEmbargoUpdater)
    end
  end
  describe 'test attribute "is_embargoed"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "embargo_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "embargo_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["article", "file"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.embargo_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "embargo_reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

