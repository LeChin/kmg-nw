Rails.application.routes.draw do

  namespace :admin do
    resources :pricings
    resources :news_items
    resources :media
    resources :instructors
    resources :schedules
    resources :workouts
    resources :class_types
    resources :home_gallery_items
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # ABOUT
  get '/about', to: "about#index", as: 'about_index'

  # # CLASSES
  # get '/classes', to: "about#index", as: 'about_index'

  # # MEDIA
  # get '/media', to: "about#index", as: 'about_index'

end
