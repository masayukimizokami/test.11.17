class RenameImageNameColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :image_name, :image
  end
end
