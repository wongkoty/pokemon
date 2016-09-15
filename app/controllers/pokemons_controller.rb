class PokemonsController < ApplicationController
	def index
		response = HTTParty.get('http://pokeapi.co/api/v2/pokemon')
		response = JSON.parse(response.body)
		pp response
		@pokemons = response["results"]
	end

	def show
		# puts params[:id]
		response = HTTParty.get('http://pokeapi.co/api/v2/pokemon/' + params[:id])
		pp JSON.parse(response.body)
		@pokemon = JSON.parse(response.body)
	end

end
