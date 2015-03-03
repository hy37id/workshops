class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]
  before_action :owner!, only: [:edit, :update]
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
  end

  def new
  end

  def edit
    #redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
  end

  def create
    self.product = Product.new(product_params)

    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update

    #if current_user.id == product.user_id
    #if current_user == product.user

    if self.product.update(product_params)
      redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end

    #else
    #flash[:error] = 'You are not allowed to edit this product.'
    #end

  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  private

  def owner!
    unless self.product.user == current_user
      redirect_to category_product_url(category, product),
                  flash: { error: 'You are not allowed to edit this product.' }
    end
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end
