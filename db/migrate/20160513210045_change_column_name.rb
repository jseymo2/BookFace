class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :books, :image_path, :image_name
  end
end
