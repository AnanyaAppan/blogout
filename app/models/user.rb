class User < ApplicationRecord
    has_many :blogs
    validates :name, presence: true
    validates :password, presence: true
end
