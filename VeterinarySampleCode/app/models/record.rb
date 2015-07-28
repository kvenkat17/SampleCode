class Record < ActiveRecord::Base
	validates :pet_name, presence: true, length: {maximum: 35}
	validates :breed, presence: true, length: {maximum: 35}
	validates :age, presence: true
	validates :weight, presence: true
	validates :last_visit_date, presence: true 
end
