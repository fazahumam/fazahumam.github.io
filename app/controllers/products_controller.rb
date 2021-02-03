class ProductsController < ApplicationController
def index
    @products = Product.all
    render plain: @products.pluck(:name, :price)
end

end

