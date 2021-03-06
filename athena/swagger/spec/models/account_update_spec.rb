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

# Unit tests for SwaggerClient::AccountUpdate
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountUpdate' do
  before do
    # run before each test
    @instance = SwaggerClient::AccountUpdate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountUpdate' do
    it 'should create an instance of AccountUpdate' do
      expect(@instance).to be_instance_of(SwaggerClient::AccountUpdate)
    end
  end
  describe 'test attribute "group_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_active"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

