LinkStation::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", :as => :logout

  root to:"links#index"
  devise_for :user

  resources(:links,only:[:index])
  resources(:generetta) { collection { get :sidebar, :models, :methods, :cases } }
  namespace(:generetta) do
    resources(:cases,only:[:create,:update])
  end
end
