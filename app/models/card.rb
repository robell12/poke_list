class Card < ApplicationRecord
  belongs_to :collection, optional: true
  validates_presence_of :name
  validates_uniqueness_of :img
end
