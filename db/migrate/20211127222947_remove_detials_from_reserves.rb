class RemoveDetialsFromReserves < ActiveRecord::Migration[6.1]
  def change
    remove_column :reserves, :room_price, :integer
  end
end
