class PokemonsController < ApplicationController
  def new
  end

  def create
    pokemon = Pokemon.new
    pokemon.name = params[:pokemon][:name]
    pokemon.ndex = params[:pokemon][:ndex]
    pokemon.update(health: 100)
    pokemon.update(level: 1)
    pokemon.update(trainer: current_trainer)
    redirect_to "/trainers/#{pokemon.trainer_id}"
  end

  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.update(trainer: current_trainer)
    redirect_to "/"
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.update(health: pokemon.health - 10)
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to "/trainers/#{pokemon.trainer_id}"
  end
end
