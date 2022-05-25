class Item < ApplicationRecord

    belongs_to :product
    validate :items_length

    def items_length
        errors.add(:item, "Product only can have #{product.no_of_item} Items") if product&.items&.count >= product&.no_of_item
    end
end
