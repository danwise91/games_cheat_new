class Game < ActiveRecord::Base
  validates :title, presence: true 
  has_many :cheats
end
