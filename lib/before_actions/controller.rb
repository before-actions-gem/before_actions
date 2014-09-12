module BeforeActions
  module Controller
    extend ActiveSupport::Concern

    module ClassMethods
      def before_actions(&block)
        TheBefore.new(self).instance_eval(&block)
      end
      def after_actions(&block)
        TheAfter.new(self).instance_eval(&block)
      end
    end

    class TheBefore

      def initialize(controller)
        @controller = controller
      end

      def actions(*list, &block)
        if list.empty?
          @controller.before_action(&block)
        else
          @controller.before_action({only: list}, &block)
        end
      end

    end

    class TheAfter

      def initialize(controller)
        @controller = controller
      end

      def actions(*list, &block)
        if list.empty?
          @controller.after_action(&block)
        else
          @controller.after_action({only: list}, &block)
        end
      end

    end

  end
end
