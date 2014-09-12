module BeforeActions
  module Controller
    extend ActiveSupport::Concern

    module ClassMethods
      def before_actions(&block)
        Scope.new(self, 'before_action').instance_eval(&block)
      end
      def after_actions(&block)
        Scope.new(self, 'after_action').instance_eval(&block)
      end
      def around_actions(&block)
        raise NotImplementedError
      end
    end

  end
end
