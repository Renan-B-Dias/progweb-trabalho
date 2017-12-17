Rails.application.routes.draw do

  devise_for :users

  root "/", action: :index, controller: :home

  resources :teachers, only: [:index, :show] do
    collection do
      get :search
    end
    resources :ratings, except: :index
  end

  resources :subjects, only: [:index, :show] do
    collection do
      get :search
    end
    resources :ratings, except: :index
  end

end