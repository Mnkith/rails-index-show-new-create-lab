class CouponsController < ApplicationController
  def show
    @c = Coupon.find(params[:id])
  end

  def index 
  end

  def new
  end

  def create
    # binding.pry 
    c = Coupon.create params.to_unsafe_hash[:coupon]
    redirect_to coupon_path(c)
  end
end