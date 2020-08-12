Rails.application.routes.draw do
  resources :diaries do
    get :search, on: :collection
  end
  root "diaries#index"
end
