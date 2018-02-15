class Photograph < ApplicationRecord
	has_many :characters
	validates :title, presence: true
end
