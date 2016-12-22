require 'httparty'
module WpApi::Content
 class Taxonomy

   def self.get_taxonomies(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/taxonomies", 
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/taxonomies/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 