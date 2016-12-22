require 'httparty'
module WpApi::Content
 class Category
   def self.get_categories(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/categories", 
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/categories/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	
 end
end 