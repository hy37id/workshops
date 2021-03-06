class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]
  
  expose(:categories) { Category.order(:name) }
  expose(:category)
  expose(:product) { Product.new }

  def index
    @categoryCount = Category.count
  end

  def show

    @productCount = category.products.count

  end

  def new
    redirect_to new_user_session_path, notice: 'Admin' unless current_user.admin
  end

  def edit
    redirect_to new_user_session_path, notice: 'Admin' unless current_user.admin
  end

  def create
    if current_user.admin? then

    self.category = Category.new(category_params)

    if category.save
      redirect_to category, notice: 'Category was successfully created.'
    else
      render action: 'new'
    end
    else
      redirect_to new_user_session_path, notice: 'Admin'

    end
  end


  def update

    if current_user.admin?

    if category.update(category_params)
      redirect_to category, notice: 'Category was successfully updated.'
    else
      render action: 'edit'
    end

    else
      redirect_to new_user_session_path, notice: 'Admin'
    end

  end

  def destroy
    category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
