require "before_actions/engine"
require "before_actions/controller"

module BeforeActions
end


if defined? ActionController::Base
  ActionController::Base.class_eval do
    include BeforeActions::Controller
  end
end