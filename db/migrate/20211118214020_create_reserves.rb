class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.string :reserve_date
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
