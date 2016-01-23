class AddFieldsToQuestion < ActiveRecord::Migration
  def change
  	
  	
  	remove_column :questions , :survey_id ,:integer
  	remove_column :questions , :types , :text
  	remove_column :questions , :question_text , :text
  	remove_column :questions , :position , :integer
  	remove_column :questions , :answer_option , :text
  	remove_column :questions , :presence , :text
  	remove_column :questions , :maximum , :integer
  	remove_column :questions , :minimum , :integer
  	remove_column :questions , :greater_than_or_equal_to , :integer
  	remove_column :questions , :less_than_or_equal_to , :integer




  	add_column :questions , :survey_id ,:integer
  	add_column :questions , :types , :integer
  	add_column :questions , :question_text , :text
  	add_column :questions , :position , :integer
  	add_column :questions , :answer_option , :text
  	add_column :questions , :presence , :boolean
  	add_column :questions , :maximum , :integer
  	add_column :questions , :minimum , :integer
  	add_column :questions , :greater_than_or_equal_to , :integer
  	add_column :questions , :less_than_or_equal_to , :integer
  end
end
