Rails.application.routes.draw do
  devise_for :teachers
  resources :teachers
  resources :clock_events, only:  [ :new, :index, :update, :destroy ]



  root 'teachers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
