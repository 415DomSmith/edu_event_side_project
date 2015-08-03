class Tag < ActiveRecord::Base

	has_many :associations, dependent: :destroy
	has_many :events, through: :associations
end
