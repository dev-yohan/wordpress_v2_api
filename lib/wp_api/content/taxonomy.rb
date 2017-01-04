require 'httparty'
module WpApi::Content
 class Taxonomy

   def self.get_taxonomies(**params)
      WpApi::Content::Entity.get_entities('/wp-json/wp/v2/taxonomies', params)
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/taxonomies/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 