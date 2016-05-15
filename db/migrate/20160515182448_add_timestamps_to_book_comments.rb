class AddTimestampsToBookComments < ActiveRecord::Migration
  def change
    add_column :book_comments, :created_at, :datetime
    add_column :book_comments, :updated_at, :datetime
  end
end
