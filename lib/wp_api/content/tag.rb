require 'httparty'
module WpApi::Content
 class Tag
   def self.get_tags(**params)
      WpApi::Content::Entity.get_entities('/wp-json/wp/v2/tags', params)
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/tags/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	
 end
end