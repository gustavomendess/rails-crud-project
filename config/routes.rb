Rails.application.routes.draw do
  resources :departamentos
  get 'produtos/search', to: 'produtos#search', as: :search_products
  resources :produtos, only: [:new, :create, :destroy, :index, :edit, :update]
  root to: 'produtos#index'
end
