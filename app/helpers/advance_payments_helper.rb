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

  def format_clp_currency(money)
    money.to_s.reverse.scan(/\d{1,3}/).join('.').reverse
  end
end
