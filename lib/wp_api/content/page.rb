require 'httparty'
module WpApi::Content
 class Page
   def self.get_pages(**params)
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/pages", 
      	params,
      ).parsed_response
   end

   def self.get_page(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/pages/#{id}", 
         WpApi.configuration.options,
      ).parsed_response
   end   
 end
end 	