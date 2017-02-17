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

  def change
    create_table :comments do |t|
      t.string :content
      t.integer :outfit_id
      t.integer :user_id

      t.timestamps
    end

  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.boolean :admin

      t.timestamps
    end
  end

end
