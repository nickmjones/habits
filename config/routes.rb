Rails.application.routes.draw do
  devise_for :users
  resource :habits
  root to: "pages#index"
end
