module BeforeActions
  module Controller
    extend ActiveSupport::Concern

    module ClassMethods
      def before_actions(&block)
        Scope.new(self, 'before').instance_eval(&block)
      end
      def after_actions(&block)
        Scope.new(self, 'after').instance_eval(&block)
      end
      def around_actions(&block)
        Scope.new(self, 'around').instance_eval(&block)
      end
    end

  end
end
