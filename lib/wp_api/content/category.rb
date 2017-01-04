require 'httparty'
 module WpApi::Content
   class Category
   #include WpApi::Content::Entity
   def self.get_categories(**params)
     WpApi::Content::Entity.get_entities('/wp-json/wp/v2/categories', params)
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/categories/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	
 end
end 