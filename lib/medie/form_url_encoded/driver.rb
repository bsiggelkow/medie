require 'active_support/core_ext/object/to_query'
require 'active_support/core_ext/object/to_param'

module Medie
  module FormUrlEncoded
    class Driver
      def marshal(content, rel)
        if content.kind_of? Hash
          content.to_param
        else
          content
        end
      end
  
      def unmarshal(content)
      	def content.links
          []
        end
        content
      end

      def can_handle?(content_type)
        !(content_type.nil? || content_type.split(";")[0]!="application/x-www-form-urlencoded")
      end

      Medie.registry << Driver.new
    end
  end
end