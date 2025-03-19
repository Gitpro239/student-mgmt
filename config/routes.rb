require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root "homes#index"

  post 'button_test_job', to: 'home#execute_on_button_click'
  devise_for :users
  # root "pages#home"
  get "students/index"
  get "students/test"
  resources :projects 
  resources :cources
  resources :students

  # namespace :admin do
  #   resources :students
  # end

  # scope module: :admin do
  #   resources :students
  # end

  # resources :students do
  #  member do
  #   get :personal_details # for multiple member action
  #    get :personal_details, on: :member #only for single member action
  #  end
  # end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
