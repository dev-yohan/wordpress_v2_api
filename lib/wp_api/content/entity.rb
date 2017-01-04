require 'httparty'
module WpApi::Content
  class Entity
    def self.get_entities(path, **params)
      params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}#{path}",
                   params,
      ).parsed_response
    end
  end
end