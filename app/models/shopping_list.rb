class ShoppingList < ApplicationRecord
    has_many :shopping_items
    belongs_to :user
end
