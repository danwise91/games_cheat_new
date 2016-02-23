class User < ActiveRecord::Base
  has_many :cheats
  has_many :games, through: :cheats 
end
