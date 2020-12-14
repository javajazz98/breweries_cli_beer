class Api
   def self.base_url
    "https://api.openbrewerydb.org/breweries"
   end 
   def self.load.data
    load_breweries
   end 
   def self.load_breweries
    response = RestClient.get(base_url +'/breweries')
    data =JSON.parse(response.body)
    data.each do |beer|
    Beer.new(beer["name"], beer["type"], beer["state"], beer ["url"], beer ["id"])
    end 
end 
 



