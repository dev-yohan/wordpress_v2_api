require 'httparty'
module WpApi::Content
 class Comment

   def self.get_comments(**params)
      WpApi::Content::Entity.get_entities('/wp-json/wp/v2/comments', params)
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/comments/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 