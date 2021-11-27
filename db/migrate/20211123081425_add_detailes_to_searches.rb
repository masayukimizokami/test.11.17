class AddDetailesToSearches < ActiveRecord::Migration[6.1]
  def change
    add_column :searches, :area_search, :string
  end
end
