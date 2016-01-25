class CreateGivenAnswers < ActiveRecord::Migration
  def change
    create_table :given_answers do |t|
      t.integer :survey_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
    add_index :given_answers, :survey_id
    add_index :given_answers, :question_id
    add_index :given_answers, :user_id
  end
end
