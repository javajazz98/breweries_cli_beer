class Api 
   def self.get_data
      response = RestClient.get("https://api.openbrewerydb.org/breweries")
      #binding.pry
      data = JSON.parse(response.body)
      data.each do |brewery_hash|
      brewery_data = {
         "name" => brewery_hash["name"],
         "state" => brewery_hash["state"],
         "brewery_type" => brewery_hash["brewery_type"]
      }
      Brewery.new(brewery_data)
      end
     
   end 
end 