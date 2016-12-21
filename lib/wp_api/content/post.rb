require 'httparty'
module WpApi::Content
 class Post

   def self.get_posts(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/posts", 
      	params,
      ).parsed_response
   end

 end
end 	