require 'httparty'
module WpApi::Content
 class Media
    def self.get_media(**params)
		params.merge!(WpApi.configuration.options)
		HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/media", 
		  params,
		).parsed_response
    end

    def self.get(id)
		HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/media/#{id}", 
		  WpApi.configuration.options,
		).parsed_response	
    end	
 end
end 	