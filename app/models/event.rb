class Event < ActiveRecord::Base
	has_many :associations, dependent: :destroy
	has_many :tags, through: :associations
	
	#MODEL METHODS FOR SCRAPING
end
