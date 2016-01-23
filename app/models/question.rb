class Question < ActiveRecord::Base
	belongs_to :survey
	has_many :given_answers
end
