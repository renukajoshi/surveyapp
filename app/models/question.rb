class Question < ActiveRecord::Base
	belongs_to :survey
	has_many :given_answers
	belongs_to :user

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |p|
				csv << p.attributes.values_at(*column_names)
			end
		end
	end
end
