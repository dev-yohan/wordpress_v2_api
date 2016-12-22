require 'httparty'
module WpApi::Content
 class Comment

   def self.get_comments(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/comments", 
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/comments/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 