class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre

  has_many :favorite_books
  has_many :users, through: :favorite_books
end
