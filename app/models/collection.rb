class Collection < ApplicationRecord
  belongs_to :user
  has_many :cards
  validates_presence_of :name
end
