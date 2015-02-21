class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :question
      t.string :image
      t.float :value

      t.timestamps null: false
    end
  end
end
