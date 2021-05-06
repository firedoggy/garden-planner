class User < ApplicationRecord
    has_many :gardens
    has_many :plants, through: :gardens

    validates :username, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    has_secure_password
end
