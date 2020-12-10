class Breweries  #name of page or name of cli?
    attr_accessor :name, :type, :state , :url
     @@all=[]
def initialize(name)
    @name = name
    @type = type 
    @state = state
    @url  = url 
    @@all << self 
end 
def self.all 
    @@all
end 

def self.find_by_id(id)
    all.find{|breweries| breweries.url == url} #same question ID or URL 
          #binging.pry
end 
end 