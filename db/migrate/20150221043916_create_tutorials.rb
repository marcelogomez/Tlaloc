class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.integer :category_id
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
