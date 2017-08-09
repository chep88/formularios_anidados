class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to @product.categories
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end

end
