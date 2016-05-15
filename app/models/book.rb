class Book < ActiveRecord::Base
	acts_as_votable

  belongs_to :author
  belongs_to :genre

  has_many :favorite_books
  has_many :users, through: :favorite_books
end
