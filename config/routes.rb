Rails.application.routes.draw do

  namespace :admin do
    resources :news_gallery_items
    resources :pricings
    resources :news_items
    resources :media
    resources :instructors
    resources :days
    resources :schedules
    resources :workouts
    resources :class_types
    resources :home_gallery_items
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
