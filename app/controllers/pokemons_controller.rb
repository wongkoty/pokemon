class PokemonsController < ApplicationController
	def index
		response = HTTParty.get('http://pokeapi.co/api/v2/pokemon')
		response = JSON.parse(response.body)
		# pp response["results"]
		@pokemons = response["results"]
	end
end
