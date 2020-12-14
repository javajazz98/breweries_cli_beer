
require 'pry'
require 'bundler'
require 'json'
require  'rest-client'
 
Bundler.require
require_relative'lib/beer.service/cli.rb'
require_relative'lib/beer.service/api.rb'
require_relative'lib/beer.models/breweries.rb'