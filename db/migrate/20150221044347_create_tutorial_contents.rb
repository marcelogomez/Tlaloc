class CreateTutorialContents < ActiveRecord::Migration
  def change
    create_table :tutorial_contents do |t|
      t.integer :tutorial_id
      t.string :name
      t.string :image
      t.integer :sequence

      t.timestamps null: false
    end
  end
end
