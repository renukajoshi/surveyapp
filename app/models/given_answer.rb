class GivenAnswer < ActiveRecord::Base
	belongs_to :question
	belongs_to :survey
	belongs_to :user

	#accepts_nested_attributes_for :survey
end
