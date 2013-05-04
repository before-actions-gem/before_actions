module LoadResource
  module Controller
    extend ActiveSupport::Concern

    def load_resource(&block)
      Command.new(self).instance_eval(&block)
    end

    def filter_load_resource
      block = self.class.load_resource_block
      load_resource(&block)
    end

    module ClassMethods
      attr_reader :load_resource_block
      def load_resource(&block)
        @load_resource_block = block
        before_filter :filter_load_resource
      end
    end

  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include LoadResource::Controller
  end
end