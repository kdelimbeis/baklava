class Menu < ApplicationRecord
  validates_presence_of :name
  has_many :categories
end
