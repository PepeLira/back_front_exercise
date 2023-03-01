FactoryBot.define do
  factory :advance_payment do
    date { Faker::Date.backward(days: 365) }
    invoice_n { Faker::Number.between(from: 1, to: 15) }
    advance_per { Faker::Number.between(from: 1, to: 100) }
    final_price { Faker::Commerce.price(range: 1000..2_000_000) }
    status { ['Aprobado', 'Procesando', 'Rechazado'].sample }
    debtor { Faker::Company.name }
  end
end
