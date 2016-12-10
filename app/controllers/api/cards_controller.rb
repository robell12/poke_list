class Api::CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def collection
    @cards = Collection.first.cards
  end
end
