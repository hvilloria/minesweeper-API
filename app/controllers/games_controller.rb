class GamesController < ApplicationController
  def create
    Game.create
  end
end