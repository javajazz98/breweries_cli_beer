#require 'rest-client'
#require 'pry'
#require 'net/http'
#require 'json'


class Brewery
    attr_accessor :name, :state, :brewery_type
    @@all = []
    def initialize(brewery_data)
        @name = brewery_data["name"]
        @state = brewery_data["state"]
        @brewery_type = brewery_data["brewery_type"]
        @@all << self 
    end

    def self.all
        @@all.first(50)
    end    
    #binding.pry 
end 