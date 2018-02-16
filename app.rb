require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')

require './lib/deck';

puts 'create a new deck object with Deck.new'
puts 'shuffle with Deck#shuffle'
puts 'draw with Deck#draw'
