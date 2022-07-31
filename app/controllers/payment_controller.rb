class PaymentController < ApplicationController

def index
  payments = Payment.all

  render_serialized(payments)
end

def create
  @payment = Payment.create(allowed_payment_params)
end

def show
  id = params[:id]
  payment = Payment.find(id)

  render_serialized(payment)
end

def destroy
  id = params[:id]

  Payment.destroy(id)
end

def generate_payment
  new_payment = Payment.new(description: "food", user_id: 1, category_id: 1, processing_date: DateTime.now, price: 42.0)
  message = "Error while generating payment"

  if new_payment.save
    render json: new_payment
  else
    render json: message
  end
end

private
def allowed_payment_params
  params.require(:payment).permit(:user_id, :category_id)
end

def render_serialized(data)
  serialized = data.as_json(include: :category, except: [:category_id, :user_id, :created_at, :updated_at])
  render json: serialized
end


end
