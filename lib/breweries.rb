class Breweries  #name of page or name of cli?
    attr_accessor :name, :type, :state , :url, :id
     @@all=[]
def initialize(name)
    @name = name
    @type = type 
    @state = state
    @url  = url 
    @id =id
    @@all << self 
end 
def self.all 
    @@all
end 

def self.find_by_id(id)
    all.find{|beer| food.id == id} #same question ID or URL 
          #binging.pry
end 
end 