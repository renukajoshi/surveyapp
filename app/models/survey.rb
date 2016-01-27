class Survey < ActiveRecord::Base
	belongs_to :user
	has_many :questions, :dependent => :destroy
	has_many :given_answers , :dependent => :destroy

	accepts_nested_attributes_for :given_answers

	validates_presence_of :name 


	
end
