class PaymentController < ApplicationController

def index
  render json: Payment.all
end

def new
  @payment = Payment.new
end

def create
  @payment = Payment.new(allowed_payment_params)
end

def show
  payment_id = params[:id]
  render json: Payment.find(payment_id)
end

private
def allowed_payment_params
  params.require(:payment).permit(:user_id, :category_id, )
end


end
