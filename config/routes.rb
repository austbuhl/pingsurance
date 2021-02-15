Rails.application.routes.draw do
  resources :leads, only: [:index, :new, :create]
end
