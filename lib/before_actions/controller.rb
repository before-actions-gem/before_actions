module BeforeActions
  module Controller
    extend ActiveSupport::Concern

    module ClassMethods
      attr_reader :before_actions_block, :after_actions_block
      def before_actions(&block)
        @before_actions_block = block
        before_filter :execute_before_actions
      end
      def after_actions(&block)
        @after_actions_block = block
        after_filter :execute_after_actions
      end
    end

    def execute_before_actions
      block = self.class.before_actions_block
      _execute_command(&block)
    end

    def execute_after_actions
      block = self.class.after_actions_block
      _execute_command(&block)
    end

    def _execute_command(&block)
      Command.new(self).instance_eval(&block)
    end

  end
end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    include BeforeActions::Controller
  end
end