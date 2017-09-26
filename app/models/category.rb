class Category < ApplicationRecord
  validates_presence_of :name
  belongs_to :menu
  has_many :items
end
