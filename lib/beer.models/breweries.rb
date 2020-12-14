class Brewery
    attr_accessor :name, :type, :state , :url, :id
     @@all=[]
def initialize(name, type, state, url, id)
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
    all.find{|brewery|brewery.id == id}
end
end