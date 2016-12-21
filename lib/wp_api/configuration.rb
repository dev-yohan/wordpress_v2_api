module WpApi
 class Configuration
   attr_accessor :base_uri
   attr_accessor :options

   def initialize
     @base_uri = nil
     @options  = {}
   end	

   def base_uri
     @base_uri
   end	

   def options
     @options
   end	

 end 	
end
