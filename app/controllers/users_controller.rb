class UsersController < ApplicationController
  before_filter :authenticate_user!

  expose(:reviews)
  expose(:users)
  expose(:user)


  def index
    @userCount = User.count
  end

  def show
    @reviews = user.reviews.limit(5)
  end

  def edit
    redirect_to new_user_session_path, notice: 'Admin' unless current_user.admin
  end



  def update

    if current_user.admin? then

      if category.update(category_params)
        redirect_to user, notice: 'User was successfully updated.'
      else
        render action: 'edit'
      end

    else
      redirect_to new_user_session_path, notice: 'Admin'
    end

  end
  # def index
  #   @users = User.all
  # end
  #
  # def show
  #   @user = User.find(params[:id])
  #   unless @user == current_user
  #     redirect_to :back, :alert => "Access denied."
  #   end
  # end

end