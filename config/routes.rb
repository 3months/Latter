Latter::Application.routes.draw do
  as :player do
      patch '/player/confirmation' => 'players/confirmations#update', :via => :patch, :as => :update_player_confirmation
  end
  devise_for :players, controllers: { confirmations: "players/confirmations" }

  resources :games, :except => [:edit, :update] do
    post :complete, :on => :member
    resource :score, :controller => 'scores', :only => [:new, :create]
  end

  resources :statistics, :only => [:index]
  resources :players do
    resource :authentication_token, :only => [:show, :destroy]
  end

  get "/player" => "players#current", :constraints => {:format => :json}

  resources :badges, :only => [:index, :show]

  root :to => 'players#index'
  get "/pages/*slug" => "pages#show", :as => 'page'

end
