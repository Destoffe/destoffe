Rails.application.routes.draw do
  root "home#index"
  get "home/league"
mount LetsEncrypt::Engine => '/.well-known'


end
