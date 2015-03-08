class UsersController < ApplicationController

  expose(:reviews)
  expose(:user)

  def show
    @reviews = user.reviews.last(5)
  end

end