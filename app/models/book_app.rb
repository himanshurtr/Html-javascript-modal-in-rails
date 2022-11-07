class BookApp < ApplicationRecord
    validates :title, :price, presence: true
end
