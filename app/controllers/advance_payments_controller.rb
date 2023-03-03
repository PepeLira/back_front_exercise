class AdvancePaymentsController < ApplicationController
  def index
    @advances = AdvancePayment.order(id: :asc).page(params[:page]).per(10)
  end

  def destroy
    @advance_payment = AdvancePayment.find(params[:id])
    if @advance_payment.destroy
      render json: { success: true }
    else
      render json: { success: false }
    end
  end
end
