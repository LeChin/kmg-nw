Rails.application.routes.draw do
  namespace :admin do
    resources :free_trial_requests
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
  get '/about/instructors', to: "about#instructors_index", as: 'instructors_index'
  get '/about/instructors/:slug', to: "about#instructors_detail", as: 'instructors_detail'
  get '/about/membership', to: "about#membership", as: 'membership'

  # CLASSES
  get '/classes', to: "classes#index", as: 'classes_index'
  get '/schedule', to: "classes#schedule", as: 'schedule'

  # MEDIA
  get '/media/photos', to: "medium#photos", as: 'photos'
  get '/media/videos', to: "medium#videos", as: 'videos'

  # NEWS
  get '/news', to: "news#index", as: 'news_index'
  get '/news/:slug', to: "news#detail", as: 'news_detail'

  get '/sitemap', to: "pages#sitemap", as: 'sitemap'

  match "*path" => 'pages#error404', via: [:get, :post]
end
