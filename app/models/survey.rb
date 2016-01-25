class Survey < ActiveRecord::Base
	belongs_to :user
	has_many :questions, :dependent => :destroy
	has_many :given_answers , :dependent => :destroy

	validates_presence_of :name 

	
end
