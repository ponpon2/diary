Rails.application.routes.draw do
  resources :diaries, only: :new
  
  root "diaries#index"
end
