module LoadResourceRails
  module Controller
    
    def load_resource(&block)
      Command.new(self).instance_eval(&block)
    end

  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include LoadResourceRails::Controller
  end
end