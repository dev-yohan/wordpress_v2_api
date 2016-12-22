require 'httparty'
module WpApi::Content
 class Tag
   def self.get_tags(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/tags", 
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/tags/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	
 end
end