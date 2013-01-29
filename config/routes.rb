Kandan::Application.routes.draw do

  root :to => "main#index"
  devise_for :users

  get '/search' => "main#search"

  resources :channels do
    resources :activities
    resources :attachments
  end

  get "/active_users" => "apis#active_users"
end
