Rails.application.routes.draw do
  resources :users, except: [:new, :edit]
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :games, except: [:new, :edit]
    end
  end
end
