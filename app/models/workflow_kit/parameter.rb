module WorkflowKit
  class Parameter < ActiveRecord::Base

    attr_accessible :key, :value

    belongs_to :parameterable, polymorphic: true

    def key
      super.to_symbol
    end

    def value
      v = super
      v = v.to_i if ( not v.to_i == nil ) and ( v.to_i.to_s == v )
      return v
    end

    def to_hash
      return { key => value }
    end

    def self.to_hash( parameters )
      parameter_hashes = parameters.collect do |parameter|
        parameter.to_hash
      end
      merged_hash = parameter_hashes.inject { |all, h| all.merge( h ) }
      return merged_hash
    end

  end
end
