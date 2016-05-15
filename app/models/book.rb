class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre

  has_many :favorite_books
  has_many :users, through: :favorite_books

  ratyrate_rateable 'book_rating'
  acts_as_commentable

  def to_s
    "#{name}"
  end
end
