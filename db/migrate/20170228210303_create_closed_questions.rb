class CreateClosedQuestions < ActiveRecord::Migration
  def change
    create_table :closed_questions do |t|

      t.timestamps null: false
    end
  end
end
