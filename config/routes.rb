Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :tags_time_cuts
  resources :races do
    collection do
      get :best_times
      get :trends
    end
  end
  resources :swim_meets
  resources :time_standards
  # sitepress_pages
  # sitepress_root
  # Route Sitepress pages through your custom controller
  get "*path", to: "site#show", constraints: { path: /.*/ }, as: :site_page
  root to: "site#show" # If your root path should be handled by Sitepress
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
