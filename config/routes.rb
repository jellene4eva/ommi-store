Rails.application.routes.draw do
  mount Shoppe::Engine => "/admin"

  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"

  root to: "products#index"

end
