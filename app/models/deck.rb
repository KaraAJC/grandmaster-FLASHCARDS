class Deck < ActiveRecord::Base
	has_many :cards
	has_many :rounds

	valides :name, presence: true
end
