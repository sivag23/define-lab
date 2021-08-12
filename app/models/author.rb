class Author < ApplicationRecord
    has_many :author_book_pivots , dependent: :destroy
    has_many :books, :through => :author_book_pivots

    validates :first_name , :last_name , :date_of_birth , presence: true
end
