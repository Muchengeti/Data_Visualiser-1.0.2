=begin
#Figshare API

#Figshare apiv2. Using Swagger 2.0

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class AccountCreate
    # Email of account
    attr_accessor :email

    # First Name
    attr_accessor :first_name

    # Last Name
    attr_accessor :last_name

    # Not applicable to regular users. This field is reserved to institutions/publishers with access to assign to specific groups
    attr_accessor :group_id

    # Institution user id
    attr_accessor :institution_user_id

    # Symplectic user id
    attr_accessor :symplectic_user_id

    # Account quota
    attr_accessor :quota

    # Is account active
    attr_accessor :is_active


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'group_id' => :'group_id',
        :'institution_user_id' => :'institution_user_id',
        :'symplectic_user_id' => :'symplectic_user_id',
        :'quota' => :'quota',
        :'is_active' => :'is_active'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'group_id' => :'Integer',
        :'institution_user_id' => :'String',
        :'symplectic_user_id' => :'String',
        :'quota' => :'Integer',
        :'is_active' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      else
        self.first_name = ""
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      else
        self.last_name = ""
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.has_key?(:'institution_user_id')
        self.institution_user_id = attributes[:'institution_user_id']
      else
        self.institution_user_id = ""
      end

      if attributes.has_key?(:'symplectic_user_id')
        self.symplectic_user_id = attributes[:'symplectic_user_id']
      else
        self.symplectic_user_id = ""
      end

      if attributes.has_key?(:'quota')
        self.quota = attributes[:'quota']
      end

      if attributes.has_key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @email.to_s.length > 150
        invalid_properties.push("invalid value for 'email', the character length must be smaller than or equal to 150.")
      end

      if @email.to_s.length < 3
        invalid_properties.push("invalid value for 'email', the character length must be great than or equal to 3.")
      end

      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @first_name.to_s.length > 30
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 30.")
      end

      if @last_name.nil?
        invalid_properties.push("invalid value for 'last_name', last_name cannot be nil.")
      end

      if @last_name.to_s.length > 30
        invalid_properties.push("invalid value for 'last_name', the character length must be smaller than or equal to 30.")
      end

      if !@institution_user_id.nil? && @institution_user_id.to_s.length > 50
        invalid_properties.push("invalid value for 'institution_user_id', the character length must be smaller than or equal to 50.")
      end

      if !@symplectic_user_id.nil? && @symplectic_user_id.to_s.length > 50
        invalid_properties.push("invalid value for 'symplectic_user_id', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @email.nil?
      return false if @email.to_s.length > 150
      return false if @email.to_s.length < 3
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 30
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 30
      return false if !@institution_user_id.nil? && @institution_user_id.to_s.length > 50
      return false if !@symplectic_user_id.nil? && @symplectic_user_id.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, "email cannot be nil"
      end

      if email.to_s.length > 150
        fail ArgumentError, "invalid value for 'email', the character length must be smaller than or equal to 150."
      end

      if email.to_s.length < 3
        fail ArgumentError, "invalid value for 'email', the character length must be great than or equal to 3."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, "first_name cannot be nil"
      end

      if first_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 30."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, "last_name cannot be nil"
      end

      if last_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'last_name', the character length must be smaller than or equal to 30."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] institution_user_id Value to be assigned
    def institution_user_id=(institution_user_id)

      if !institution_user_id.nil? && institution_user_id.to_s.length > 50
        fail ArgumentError, "invalid value for 'institution_user_id', the character length must be smaller than or equal to 50."
      end

      @institution_user_id = institution_user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] symplectic_user_id Value to be assigned
    def symplectic_user_id=(symplectic_user_id)

      if !symplectic_user_id.nil? && symplectic_user_id.to_s.length > 50
        fail ArgumentError, "invalid value for 'symplectic_user_id', the character length must be smaller than or equal to 50."
      end

      @symplectic_user_id = symplectic_user_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          group_id == o.group_id &&
          institution_user_id == o.institution_user_id &&
          symplectic_user_id == o.symplectic_user_id &&
          quota == o.quota &&
          is_active == o.is_active
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email, first_name, last_name, group_id, institution_user_id, symplectic_user_id, quota, is_active].hash
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