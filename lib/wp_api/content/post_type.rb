require 'httparty'
module WpApi::Content
 class PostType

   def self.get_types(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/types", 
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/types/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 	