LinkStation::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", :as => :logout

  get "/" => redirect("/links/")
  devise_for :user
  resources(:links,only:[:index])
end
