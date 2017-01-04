require 'httparty'
module WpApi::Content
 class Media
    def self.get_media(**params)
		WpApi::Content::Entity.get_entities('/wp-json/wp/v2/media', params)
    end

    def self.get(id)
		HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/media/#{id}", 
		  WpApi.configuration.options,
		).parsed_response	
    end	
 end
end 	