class Api 
   def self.get_data
      response = RestClient.get("https://api.openbrewerydb.org/breweries")
      #binding.pry
      data = JSON.parse(response.body)
      data.map do |brewery_hash|
         Brewery.new(brewery_hash)
      end

   end 
end 