class AddImages < ActiveRecord::Migration[5.0]
  def change
    add_attachment :clothings, :image
  end
end
