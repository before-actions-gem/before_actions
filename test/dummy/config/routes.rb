Rails.application.routes.draw do

  mount BeforeActions::Engine => "/load_resource"
end
