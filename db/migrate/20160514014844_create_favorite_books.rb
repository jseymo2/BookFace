class CreateFavoriteBooks < ActiveRecord::Migration
  def change
    create_table :favorite_books do |t|
      t.references :user, index: true
      t.references :book

      t.timestamps
    end
  end
end
