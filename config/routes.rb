Rails.application.routes.draw do

  resources :dealers
  namespace :api do
    namespace :v1 do
      resources :dealers, only: %i[create] do
        collection do
          get 'by_code'
        end
        member do
          post 'start'
        end
        
        resources :snacks
      end
      resources :people
      resources :movies
    end
  end
end
