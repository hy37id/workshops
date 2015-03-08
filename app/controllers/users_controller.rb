class UsersController < ApplicationController

  expose(:reviews)
  expose(:user)

  def show
    @reviews = user.reviews.limit(5)
  end

end