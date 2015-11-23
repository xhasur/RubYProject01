Rails.application.routes.draw do



  #get "/imagenes" => "images#index"
  #get "/imagenes/new" => "images#new",as: :new_image


  resources :images,only: [:index, :new , :create],path: "/imagenes"


end
