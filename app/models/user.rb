class User < ApplicationRecord
  has_many :listings, dependent: :destroy
  # has_many :books, dependent: :destroy # see https://guides.rubyonrails.org/association_basics.html

  validates(:name, presence: true)
  validates(:email, format: { with: URI::MailTo::EMAIL_REGEXP })
  validates(:password, presence: true)
end
