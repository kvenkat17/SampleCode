class Veterinarydocslist < ActiveRecord::Base

	validates :name,presence: true, length: {maximum: 35}
	validates :zip, length: {minimum: 5}
	validates :years_in_practice, numericality: {greater_than: 1, less_than_or_equal_to: 100}
end
