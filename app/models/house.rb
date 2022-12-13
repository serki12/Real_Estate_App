class House < ApplicationRecord
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
    validates :address, presence: true
    validates :price, presence: true
    validates :beds, presence: true
    validates :bath, presence: true
    validates :image, presence: true
    validates :dimension, presence: true
end
