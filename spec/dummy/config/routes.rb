Rails.application.routes.draw do

  get 'bunny/one'
  get 'bunny/two'
  get 'bunny/three'

  get 'cat/one'
  get 'cat/two'
  get 'cat/three'

  get 'dog/one'
  get 'dog/two'
  get 'dog/three'

  resources :admin_foos
  resources :foos

end
