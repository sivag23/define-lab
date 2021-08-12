class Book < ApplicationRecord
    has_many :author_book_pivots , dependent: :destroy
    has_many :authors , :through => :author_book_pivots

    validates :book_title  , presence: true 
end
