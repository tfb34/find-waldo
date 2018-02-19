class Photograph < ApplicationRecord
	has_many :characters
	has_many :users
	validates :title, presence: true, uniqueness: true
end
