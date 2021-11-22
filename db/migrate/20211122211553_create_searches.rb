class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :Area

      t.timestamps
    end
  end
end
