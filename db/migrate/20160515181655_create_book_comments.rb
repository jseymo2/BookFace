class CreateBookComments < ActiveRecord::Migration
  def change
    create_table :book_comments do |t|
      t.references :book, index: true
      t.references :user
      t.string :comment
    end
  end
end
