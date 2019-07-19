Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :topics_notecards, :users, :topics, :notecards, :users_topics
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
