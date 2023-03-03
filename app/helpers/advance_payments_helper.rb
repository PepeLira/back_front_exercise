module AdvancePaymentsHelper
  def status_badge_color(status)
    case status
    when "Rechazado"
      'badge badge-danger'
    when "Aprobado"
      'badge badge-success'
    else
      'badge badge-warning'
    end
  end
end
