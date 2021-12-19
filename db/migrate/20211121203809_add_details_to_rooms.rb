class AddDetailsToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :image, :text
  end
end
