class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 2000

    Stripe::Charge.create(
      :source    => params[:id],
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  end

end
