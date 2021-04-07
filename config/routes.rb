Rails.application.routes.draw do
	
  devise_for :users
  root "home#index"

  get "/league", to: "league#index"
  get "/league/flex", to: "league#flex_queue"
  get "/league/tft", to: "league#tft"

  get "league/test"

  resources :books
  mount LetsEncrypt::Engine => '/.well-known'

end
