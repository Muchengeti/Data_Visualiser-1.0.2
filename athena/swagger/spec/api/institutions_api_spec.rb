=begin
#Figshare API

#Figshare apiv2. Using Swagger 2.0

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::InstitutionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InstitutionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::InstitutionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstitutionsApi' do
    it 'should create an instance of InstitutionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::InstitutionsApi)
    end
  end

  # unit tests for institution_articles
  # Public Licenses
  # Returns a list of articles belonging to the institution
  # @param institution_string_id 
  # @param resource_id 
  # @param filename 
  # @param [Hash] opts the optional parameters
  # @return [Array<Article>]
  describe 'institution_articles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for institution_hrfeed_upload
  # Private Institution HRfeed Upload
  # More info in the &lt;a href&#x3D;\&quot;#hr_feed\&quot;&gt;HR Feed section&lt;/a&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [File] :hrfeed You can find an example in the Hr Feed section
  # @return [ResponseMessage]
  describe 'institution_hrfeed_upload test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_account_institution_user
  # Private Account Institution User
  # Retrieve institution user information using the account_id
  # @param account_id Account identifier the user is associated to
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'private_account_institution_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_categories_list
  # Private Account Categories
  # List institution categories (including parent Categories)
  # @param [Hash] opts the optional parameters
  # @return [Array<Category>]
  describe 'private_categories_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_account_group_role_delete
  # Delete Institution Account Group Role
  # Delete Institution Account Group Role
  # @param account_id Account identifier for which to remove the role
  # @param group_id Group identifier for which to remove the role
  # @param role_id Role identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'private_institution_account_group_role_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_account_group_roles
  # List Institution Account Group Roles
  # List Institution Account Group Roles
  # @param account_id Account identifier the user is associated to
  # @param [Hash] opts the optional parameters
  # @return [AccountGroupRoles]
  describe 'private_institution_account_group_roles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_account_group_roles_create
  # Add Institution Account Group Roles
  # Add Institution Account Group Roles
  # @param account_id Account identifier the user is associated to
  # @param account Account description
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'private_institution_account_group_roles_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_accounts_create
  # Create new Institution Account
  # Create a new Account by sending account information
  # @param account Account description
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'private_institution_accounts_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_accounts_list
  # Private Account Institution Accounts
  # Returns the accounts for which the account has administrative privileges (assigned and inherited).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Used for pagination with page_size
  # @option opts [Integer] :page_size The number of results included on a page. Used for pagination with page
  # @option opts [Integer] :limit Number of results included on a page. Used for pagination with query
  # @option opts [Integer] :offset Where to start the listing(the offset of the first result). Used for pagination with limit
  # @option opts [Integer] :is_active Filter by active status
  # @option opts [String] :institution_user_id Filter by institution_user_id
  # @option opts [String] :email Filter by email
  # @return [Array<ShortAccount>]
  describe 'private_institution_accounts_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_accounts_search
  # Private Account Institution Accounts Search
  # Returns the accounts for which the account has administrative privileges (assigned and inherited).
  # @param search Search Parameters
  # @param [Hash] opts the optional parameters
  # @return [Array<ShortAccount>]
  describe 'private_institution_accounts_search test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_accounts_update
  # Update Institution Account
  # Update Institution Account
  # @param account_id Account identifier the user is associated to
  # @param account Account description
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'private_institution_accounts_update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_articles
  # Private Institution Articles
  # Get Articles from own institution. User must be administrator of the institution
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Used for pagination with page_size
  # @option opts [Integer] :page_size The number of results included on a page. Used for pagination with page
  # @option opts [Integer] :limit Number of results included on a page. Used for pagination with query
  # @option opts [Integer] :offset Where to start the listing(the offset of the first result). Used for pagination with limit
  # @option opts [String] :order The field by which to order. Default varies by endpoint/resource.
  # @option opts [String] :order_direction 
  # @option opts [String] :published_since Filter by article publishing date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  # @option opts [String] :modified_since Filter by article modified date. Will only return articles published after the date. date(ISO 8601) YYYY-MM-DD
  # @option opts [Integer] :status only return collections with this status
  # @option opts [String] :resource_doi only return collections with this resource_doi
  # @option opts [Integer] :item_type Only return collections with the respective type. Mapping for item_type is: 1 - Figure, 2 - Media, 3 - Dataset, 4 - Fileset, 5 - Poster, 6 - Paper, 7 - Presentation, 8 - Thesis, 9 - Code, 12 - Preprint
  # @return [Array<Article>]
  describe 'private_institution_articles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_details
  # Private Account Institutions
  # Account institution details
  # @param [Hash] opts the optional parameters
  # @return [Institution]
  describe 'private_institution_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_groups_list
  # Private Account Institution Groups
  # Returns the groups for which the account has administrative privileges (assigned and inherited).
  # @param [Hash] opts the optional parameters
  # @return [Array<Group>]
  describe 'private_institution_groups_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for private_institution_roles_list
  # Private Account Institution Roles
  # Returns the roles available for groups and the institution group.
  # @param [Hash] opts the optional parameters
  # @return [Array<Role>]
  describe 'private_institution_roles_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end