class AdvancePaymentsController < ApplicationController
  def index
    @advances = AdvancePayment.order(id: :asc).page(params[:page]).per(10)
  end
end
