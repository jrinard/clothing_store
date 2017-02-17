class CreateOutfits < ActiveRecord::Migration[5.0]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :details
      t.string :price
      t.integer :comment_id
      t.integer :user_id

      t.timestamps
      end
  end
end
