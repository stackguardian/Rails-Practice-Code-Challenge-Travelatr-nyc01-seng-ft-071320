class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts 

    validates :name, uniqueness: true 
end
