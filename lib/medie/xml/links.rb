module Medie
  module Xml
    class Links
      include Enumerable
  
      def initialize(links)
        @hash = {}
        @links = [links] unless links.kind_of? Array
        @links = [] unless @links
        @links.each { |l|
          link = Medie::Link.new(l)
          @hash[link.rel.to_s] = link
        }
      end

      def [](name)
        @hash[name]
      end
  
      def size
        @hash.size
      end
  
      def keys
        @hash.keys
      end

      def each
        @links.each do |l|
          yield l
        end
      end
  
      def method_missing(sym, *args)
        raise "Links can not receive arguments" unless args.empty?
        self[sym.to_s]
      end
    end
  end
end