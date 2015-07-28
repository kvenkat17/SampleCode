class Apptschedule < ActiveRecord::Base
	validates :date_of_visit, presence: true
	validates :pet_name, presence: true
	validates :customer, presence: true
	validates :visit_reason, presence: true
end
