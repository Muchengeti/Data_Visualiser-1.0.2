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

# Unit tests for SwaggerClient::ConfidentialityCreator
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConfidentialityCreator' do
  before do
    # run before each test
    @instance = SwaggerClient::ConfidentialityCreator.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConfidentialityCreator' do
    it 'should create an instance of ConfidentialityCreator' do
      expect(@instance).to be_instance_of(SwaggerClient::ConfidentialityCreator)
    end
  end
  describe 'test attribute "reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

