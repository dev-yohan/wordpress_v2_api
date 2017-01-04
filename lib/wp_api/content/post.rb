require 'httparty'
module WpApi::Content
 class Post

   def self.get_posts(**params)
      WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts', params)
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/posts/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 	