module Concerns
    module Findable
      def find_by_name(query)
        all.find { |item| item.name == query }
      end
  
      def find_or_create_by_name(query)
        find_by_name(query) || create(query)
      end
    end
end