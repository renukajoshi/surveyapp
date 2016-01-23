class CreateGivenAnswers < ActiveRecord::Migration
  def change
    create_table :given_answers do |t|
      t.integer :survey_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
  end
end
