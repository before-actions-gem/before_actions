if defined? ActionController::Base
  ActionController::Base.class_eval do
    include BeforeActions::Controller
  end
end