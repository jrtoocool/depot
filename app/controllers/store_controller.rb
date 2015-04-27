class StoreController < ApplicationController
  include CurrentCart
  include IncrementCount
  
  before_action :increment_count
  before_action :set_cart
  
  def index
    @products = Product.order(:title)
  end
  
end
