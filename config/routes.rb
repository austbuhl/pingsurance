Rails.application.routes.draw do
  root 'leads#index'
  resources :leads, only: [:index, :new, :create]
end
