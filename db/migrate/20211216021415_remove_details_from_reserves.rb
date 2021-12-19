class RemoveDetailsFromReserves < ActiveRecord::Migration[6.1]
  def change
    remove_column :reserves, :room_id, :integer
    remove_column :reserves, :user_id, :integer
  end
end
