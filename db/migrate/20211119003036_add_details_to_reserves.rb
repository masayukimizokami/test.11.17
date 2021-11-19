class AddDetailsToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :user_id, :integer
    add_column :reserves, :room_id, :integer
    add_column :reserves, :start_date, :datetime
    add_column :reserves, :end_date, :datetime
    add_column :reserves, :num_people, :integer
    add_column :reserves, :room_price, :integer
    add_column :reserves, :total_price, :integer
  end
end
