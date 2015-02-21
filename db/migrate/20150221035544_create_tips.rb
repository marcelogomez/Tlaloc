class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :category_id
      t.text :content
      t.string :image
      t.boolean :shown

      t.timestamps null: false
    end
  end
end
