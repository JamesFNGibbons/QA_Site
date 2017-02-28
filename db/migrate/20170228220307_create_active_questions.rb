class CreateActiveQuestions < ActiveRecord::Migration
  def change
    create_table :active_questions do |t|
      t.string "question", null: false
      t.timestamps null: false
    end
  end
end
