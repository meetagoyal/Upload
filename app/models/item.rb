class Item < ApplicationRecord
    validates :item_number, uniqueness: {scope: [:start_date]}
end