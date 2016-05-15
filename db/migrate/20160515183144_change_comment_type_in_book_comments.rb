class ChangeCommentTypeInBookComments < ActiveRecord::Migration
  def change
    change_column :book_comments, :comment, :text
  end
end
