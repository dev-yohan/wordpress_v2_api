# Wordpress V2 API wrapper
Ruby gem to consume wordpress REST API V2: http://v2.wp-api.org/

[![Gem Version](https://badge.fury.io/rb/wordpress_v2_api.svg)](https://badge.fury.io/rb/wordpress_v2_api)
[![Code Climate](https://codeclimate.com/github/dev-yohan/wordpress_v2_api/badges/gpa.svg)](https://codeclimate.com/github/dev-yohan/wordpress_v2_api)
[![Test Coverage](https://codeclimate.com/github/dev-yohan/wordpress_v2_api/badges/coverage.svg)](https://codeclimate.com/github/dev-yohan/wordpress_v2_api/coverage)
[![Issue Count](https://codeclimate.com/github/dev-yohan/wordpress_v2_api/badges/issue_count.svg)](https://codeclimate.com/github/dev-yohan/wordpress_v2_api)

# Requirements
- httparty >= 0.13.7, ~> 0.13

# Configuration
    config = WpApi::Configuration.new
    config.base_uri = 'http://live-asuntos-de-mujeres.pantheonsite.io'
    config.options  = {
      http_proxyaddr: '10.28.2.251',
      http_proxyport: 3128
    }
    WpApi.configuration = config


# Examples

**Retrieve all posts**

    WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts')
