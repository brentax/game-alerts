Rails.application.routes.draw do
  resources :subscriptions, except: [:new, :edit]
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :games, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
end
