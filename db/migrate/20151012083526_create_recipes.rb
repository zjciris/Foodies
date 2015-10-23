class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :title, null: false
      t.text :description
      t.integer :cook_time

      t.timestamps null: false
    end
  end
end