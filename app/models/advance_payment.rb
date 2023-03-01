class AdvancePayment < ApplicationRecord
  validates :status, inclusion: {
      in: %w(Rechazado Aprobado Procesando),
      message: "%{value} is not a valid status"
  }
end
