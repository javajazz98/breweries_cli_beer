class Cli
    def run
        welcome! Lets look at some beer options!!
        Api.get_breweries
    end 