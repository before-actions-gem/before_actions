module LoadResource
  module Controller
    
    def load_resource(&block)
      Command.new(self).instance_eval(&block)
    end

  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include LoadResource::Controller
  end
end