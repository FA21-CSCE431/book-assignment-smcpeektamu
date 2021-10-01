class Book < ApplicationRecord
    validates :title, author, price, pub_date, presence: true
end
