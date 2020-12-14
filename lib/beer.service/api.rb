class Api 
   URL =  "https://api.openbrewerydb.org/breweries"
def self.get_brewery
   response = RestClient.get(URL)
   data = JSON.parse(response.body)
   data.each do |brewery| 
   result.push Brewery.new(brewery["name"], brewery["type"], brewery["state"], brewery ["url"], brewery ["id"])
   end
   name = brewery ['name']
   type = brewery ['type']
   state = brewery ['state'] 
   url = brewery ['url']
   id = brewery ['id'] 
    brewery.new(name, type, state, url, id)
   end 
end
