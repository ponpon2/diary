Rails.application.routes.draw do
  resources :diaries
  
  root "diaries#index"
end
