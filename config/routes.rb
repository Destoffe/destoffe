Rails.application.routes.draw do
  root "home#index"
  get "home/league"

  get "/league", to: "league#index"
  get "/league/flex", to: "league#flex_queue"
  get "/league/tft", to: "league#tft"

   get "league/test"
  mount LetsEncrypt::Engine => '/.well-known'

end
