Rails.application.routes.draw do

  resources :admin_foos

  resources :foos

  mount BeforeActions::Engine => "/load_resource"
end
