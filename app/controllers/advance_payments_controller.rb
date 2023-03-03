class AdvancePaymentsController < ApplicationController
  def index
    @advances = AdvancePayment.all
  end
end
