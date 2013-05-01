Rails.application.routes.draw do

  mount LoadResource::Engine => "/load_resource"
end
