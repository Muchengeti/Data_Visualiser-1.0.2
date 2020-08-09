=begin
#Figshare API

#Figshare apiv2. Using Swagger 2.0

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class CollectionCreate
    # Title of article
    attr_accessor :title

    # The article description. In a publisher case, usually this is the remote article description
    attr_accessor :description

    # List of articles to be associated with the collection
    attr_accessor :articles

    # List of authors to be assosciated with the article. The list can contain author ids or author names. No more than 10 authors. For adding more authors use the specific authors endpoint.
    attr_accessor :authors

    # List of category ids to be associated with the article(e.g [1, 23, 33, 66])
    attr_accessor :categories

    # List of tags to be associated with the article. Keywords can be used instead
    attr_accessor :tags

    # List of tags to be associated with the article. Tags can be used instead
    attr_accessor :keywords

    # List of links to be associated with the article (e.g [\"http://link1\", \"http://link2\", \"http://link3\"])
    attr_accessor :references

    # List of key, values pairs to be associated with the article
    attr_accessor :custom_fields

    # Not applicable for regular users. In an institutional case, make sure your group supports setting DOIs. This setting is applied by figshare via opening a ticket through our support/helpdesk system.
    attr_accessor :doi

    # Not applicable to regular users. In a publisher case, this is the publisher article id
    attr_accessor :resource_id

    # Not applicable to regular users. In a publisher case, this is the publisher article link
    attr_accessor :resource_link

    # Not applicable to regular users. In a publisher case, this is the publisher article DOI. For linkback this needs to be used in combination with resource_title.
    attr_accessor :resource_doi

    # Not applicable to regular users. In a publisher case, this is the publisher article title. For linkback this needs to be used in combination with resource_doi.
    attr_accessor :resource_title

    # Not applicable to regular users. In a publisher case, this is the publisher article version
    attr_accessor :resource_version

    # Not applicable to regular users. This field is reserved to institutions/publishers with access to assign to specific groups
    attr_accessor :group_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'description' => :'description',
        :'articles' => :'articles',
        :'authors' => :'authors',
        :'categories' => :'categories',
        :'tags' => :'tags',
        :'keywords' => :'keywords',
        :'references' => :'references',
        :'custom_fields' => :'custom_fields',
        :'doi' => :'doi',
        :'resource_id' => :'resource_id',
        :'resource_link' => :'resource_link',
        :'resource_doi' => :'resource_doi',
        :'resource_title' => :'resource_title',
        :'resource_version' => :'resource_version',
        :'group_id' => :'group_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'title' => :'String',
        :'description' => :'String',
        :'articles' => :'Array<Integer>',
        :'authors' => :'Array<Object>',
        :'categories' => :'Array<Integer>',
        :'tags' => :'Array<String>',
        :'keywords' => :'Array<String>',
        :'references' => :'Array<String>',
        :'custom_fields' => :'Object',
        :'doi' => :'String',
        :'resource_id' => :'String',
        :'resource_link' => :'String',
        :'resource_doi' => :'String',
        :'resource_title' => :'String',
        :'resource_version' => :'Integer',
        :'group_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = ""
      end

      if attributes.has_key?(:'articles')
        if (value = attributes[:'articles']).is_a?(Array)
          self.articles = value
        end
      end

      if attributes.has_key?(:'authors')
        if (value = attributes[:'authors']).is_a?(Array)
          self.authors = value
        end
      end

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'keywords')
        if (value = attributes[:'keywords']).is_a?(Array)
          self.keywords = value
        end
      end

      if attributes.has_key?(:'references')
        if (value = attributes[:'references']).is_a?(Array)
          self.references = value
        end
      end

      if attributes.has_key?(:'custom_fields')
        self.custom_fields = attributes[:'custom_fields']
      end

      if attributes.has_key?(:'doi')
        self.doi = attributes[:'doi']
      else
        self.doi = ""
      end

      if attributes.has_key?(:'resource_id')
        self.resource_id = attributes[:'resource_id']
      end

      if attributes.has_key?(:'resource_link')
        self.resource_link = attributes[:'resource_link']
      end

      if attributes.has_key?(:'resource_doi')
        self.resource_doi = attributes[:'resource_doi']
      else
        self.resource_doi = ""
      end

      if attributes.has_key?(:'resource_title')
        self.resource_title = attributes[:'resource_title']
      else
        self.resource_title = ""
      end

      if attributes.has_key?(:'resource_version')
        self.resource_version = attributes[:'resource_version']
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      if @title.to_s.length > 500
        invalid_properties.push("invalid value for 'title', the character length must be smaller than or equal to 500.")
      end

      if @title.to_s.length < 3
        invalid_properties.push("invalid value for 'title', the character length must be great than or equal to 3.")
      end

      if !@description.nil? && @description.to_s.length > 10000
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 10000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @title.to_s.length > 500
      return false if @title.to_s.length < 3
      return false if !@description.nil? && @description.to_s.length > 10000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, "title cannot be nil"
      end

      if title.to_s.length > 500
        fail ArgumentError, "invalid value for 'title', the character length must be smaller than or equal to 500."
      end

      if title.to_s.length < 3
        fail ArgumentError, "invalid value for 'title', the character length must be great than or equal to 3."
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 10000
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 10000."
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          description == o.description &&
          articles == o.articles &&
          authors == o.authors &&
          categories == o.categories &&
          tags == o.tags &&
          keywords == o.keywords &&
          references == o.references &&
          custom_fields == o.custom_fields &&
          doi == o.doi &&
          resource_id == o.resource_id &&
          resource_link == o.resource_link &&
          resource_doi == o.resource_doi &&
          resource_title == o.resource_title &&
          resource_version == o.resource_version &&
          group_id == o.group_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [title, description, articles, authors, categories, tags, keywords, references, custom_fields, doi, resource_id, resource_link, resource_doi, resource_title, resource_version, group_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end