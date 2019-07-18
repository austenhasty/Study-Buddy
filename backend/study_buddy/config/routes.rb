Rails.application.routes.draw do
  resources :topics_notecards
  resources :users_topics
  resources :notecards
  resources :topics
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
