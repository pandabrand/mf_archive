Rails.application.routes.draw do
  get 'dashboard/index'
  get 'arf/:id', to: 'arf#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :divisions, :districts, :m_complexes, :branches, :orders, :users, only: [:index, :show]

  root 'orders#index'
end
