Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :artists, only: [:create,:new,:show,:edit,:update,:index]
 resources :genres, only: [:create,:new,:show,:edit,:update,:index]
end
