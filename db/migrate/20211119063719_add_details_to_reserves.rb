class AddDetailsToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :total_date, :integer
  end
end
