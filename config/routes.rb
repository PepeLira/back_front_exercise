Rails.application.routes.draw do
  get 'advance_payments/index', to: 'advance_payments#index'
  delete 'advance_payment/:id/delete', to: 'advance_payments#destroy', as: :delete_advance_payment

  root 'advance_payments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
