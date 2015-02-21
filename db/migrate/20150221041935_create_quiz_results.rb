class CreateQuizResults < ActiveRecord::Migration
  def change
    create_table :quiz_results do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.integer :n_correct
      t.float :score
      t.date :date

      t.timestamps null: false
    end
  end
end
