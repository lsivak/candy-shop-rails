class User < ActiveRecord::Base
    has_secure_password
    has_many :purchases
    has_many :candies, through: :purchases
    validates_presence_of :taste, :cash, :appetite
    validates :cash, :appetite, numericality: { only_integer: true }
end
