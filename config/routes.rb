Rails.application.routes.draw do
  resources :shains do
    member do
      get 'standup'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
