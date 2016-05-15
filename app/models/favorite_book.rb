class FavoriteBook < ActiveRecord::Base

  #validates :user_id, :book_id, limit: {must_equal:1}
  #validates :book_id
  # validates :user_id, :uniqueness => {:scope => :book_id , :message => "Only add on book to your favorites"}
end