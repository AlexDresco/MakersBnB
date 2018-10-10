class Listing < ApplicationRecord
  # belongs_to :user # see https://guides.rubyonrails.org/association_basics.html
  validates(:property_name, presence: true)
  validates(:description, presence: true)
  validates(:price, presence: true)
  validates(:start_date, presence: true)

end
