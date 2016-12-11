class Api::CardsController < ApplicationController


  def index
    @cards = Card.all
  end

  def collection
    @cards = Collection.first.cards
  end

  def update
    card = Card.find(params[:id])
    card.update(card_params)
   render json: card
  end

  def UserCollection
    @cards = Card.all
  end

  def add_to_collection
    collection = Collection.first
    card = Card.find(params[:id])
    collection.cards << card
  end

  # def remove_from_collection
  #   collection = Collection.first
  #   card = Card.find(params[:id])
  #   collection.cards.delete_if{|c| c == card }
  # end

  private
  def card_params
    params.require(:card).permit(:name, :power, :value, :collected, :description, :kind)
  end
end
