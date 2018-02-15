class Character < ApplicationRecord
	has_many :coordinates
	belongs_to :photograph
	validates :name, presence: true
end
