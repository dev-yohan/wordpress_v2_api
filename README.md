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
    config.base_uri = <your_site_base_uri>
    config.options  = {
      http_proxyaddr: <your_proxy_address>,
      http_proxyport: <your_proxy_port>
    }
    WpApi.configuration = config

# API Reference
http://v2.wp-api.org/reference/

# Examples

**Retrieve all posts**

    WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts')

**Paginate posts**

    WpApi::Content::Entity.get_entities('/wp-json/wp/v2/posts', {query:{page:1, per_page: 10}})
