Rails.application.routes.draw do
  devise_for :teachers
  resources :teachers

  root 'teachers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
