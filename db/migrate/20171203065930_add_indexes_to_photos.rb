class AddIndexesToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_index :photos, [:user_id, :place_id]
    add_index :photos, :place_id
  end
end
