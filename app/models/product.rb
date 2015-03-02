class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, :description, presence: true
  validates :price, presence: true

  validates :price, format: { :with => /\A\d+(?:\.\d{0,2})?\z/ }

  def average_rating
    #sum(user.reviews.rating) / user.reviews.count
    reviews.average(:rating)
    #user.reviews.average(:rating)
    #Review.average(:rating)
  end

end
