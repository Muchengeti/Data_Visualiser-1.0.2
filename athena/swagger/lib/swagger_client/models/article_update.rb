=begin
#Figshare API

#Figshare apiv2. Using Swagger 2.0

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class ArticleUpdate
    # Title of article
    attr_accessor :title

    # The article description. In a publisher case, usually this is the remote article description
    attr_accessor :description

    # List of tags to be associated with the article. Keywords can be used instead
    attr_accessor :tags

    # List of tags to be associated with the article. Tags can be used instead
    attr_accessor :keywords

    # List of links to be associated with the article (e.g [\"http://link1\", \"http://link2\", \"http://link3\"])
    attr_accessor :references

    # List of category ids to be associated with the article(e.g [1, 23, 33, 66])
    attr_accessor :categories

    # List of authors to be assosciated with the article. The list can contain author ids or author names. No more than 10 authors. For adding more authors use the specific authors endpoint.
    attr_accessor :authors

    # List of key, values pairs to be associated with the article
    attr_accessor :custom_fields

    # Article type
    attr_accessor :defined_type

    # Grant number or funding authority
    attr_accessor :funding

    # License id for this article.
    attr_accessor :license

    # Not appliable for regular users. In an institutional case, make sure your group supports setting DOIs. This setting is applied by figshare via opening a ticket through our support/helpdesk system.
    attr_accessor :doi

    # Not applicable to regular users. In a publisher case, this is the publisher article DOI.
    attr_accessor :resource_doi

    # Not applicable to regular users. In a publisher case, this is the publisher article title.
    attr_accessor :resource_title

    # Not applicable to regular users. This field is reserved to institutions/publishers with access to assign to specific groups
    attr_accessor :group_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'description' => :'description',
        :'tags' => :'tags',
        :'keywords' => :'keywords',
        :'references' => :'references',
        :'categories' => :'categories',
        :'authors' => :'authors',
        :'custom_fields' => :'custom_fields',
        :'defined_type' => :'defined_type',
        :'funding' => :'funding',
        :'license' => :'license',
        :'doi' => :'doi',
        :'resource_doi' => :'resource_doi',
        :'resource_title' => :'resource_title',
        :'group_id' => :'group_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'title' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<String>',
        :'keywords' => :'Array<String>',
        :'references' => :'Array<String>',
        :'categories' => :'Array<Integer>',
        :'authors' => :'Array<Object>',
        :'custom_fields' => :'Object',
        :'defined_type' => :'String',
        :'funding' => :'String',
        :'license' => :'Integer',
        :'doi' => :'String',
        :'resource_doi' => :'String',
        :'resource_title' => :'String',
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

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'authors')
        if (value = attributes[:'authors']).is_a?(Array)
          self.authors = value
        end
      end

      if attributes.has_key?(:'custom_fields')
        self.custom_fields = attributes[:'custom_fields']
      end

      if attributes.has_key?(:'defined_type')
        self.defined_type = attributes[:'defined_type']
      end

      if attributes.has_key?(:'funding')
        self.funding = attributes[:'funding']
      else
        self.funding = ""
      end

      if attributes.has_key?(:'license')
        self.license = attributes[:'license']
      else
        self.license = 0
      end

      if attributes.has_key?(:'doi')
        self.doi = attributes[:'doi']
      else
        self.doi = ""
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

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@title.nil? && @title.to_s.length > 500
        invalid_properties.push("invalid value for 'title', the character length must be smaller than or equal to 500.")
      end

      if !@title.nil? && @title.to_s.length < 3
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
      return false if !@title.nil? && @title.to_s.length > 500
      return false if !@title.nil? && @title.to_s.length < 3
      return false if !@description.nil? && @description.to_s.length > 10000
      defined_type_validator = EnumAttributeValidator.new('String', ["figure", "media", "dataset", "fileset", "poster", "paper", "presentation", "thesis", "code", "metadata", "preprint"])
      return false unless defined_type_validator.valid?(@defined_type)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)

      if !title.nil? && title.to_s.length > 500
        fail ArgumentError, "invalid value for 'title', the character length must be smaller than or equal to 500."
      end

      if !title.nil? && title.to_s.length < 3
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] defined_type Object to be assigned
    def defined_type=(defined_type)
      validator = EnumAttributeValidator.new('String', ["figure", "media", "dataset", "fileset", "poster", "paper", "presentation", "thesis", "code", "metadata", "preprint"])
      unless validator.valid?(defined_type)
        fail ArgumentError, "invalid value for 'defined_type', must be one of #{validator.allowable_values}."
      end
      @defined_type = defined_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          description == o.description &&
          tags == o.tags &&
          keywords == o.keywords &&
          references == o.references &&
          categories == o.categories &&
          authors == o.authors &&
          custom_fields == o.custom_fields &&
          defined_type == o.defined_type &&
          funding == o.funding &&
          license == o.license &&
          doi == o.doi &&
          resource_doi == o.resource_doi &&
          resource_title == o.resource_title &&
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
      [title, description, tags, keywords, references, categories, authors, custom_fields, defined_type, funding, license, doi, resource_doi, resource_title, group_id].hash
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
