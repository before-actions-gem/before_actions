module BeforeActions
  module Controller
    class Scope

      def initialize(controller, the_method)
        @controller = controller
        @the_method = the_method
      end

      def all(&block)
        @controller.send(@the_method, &block)
      end

      def only(*list, &block)
        @controller.send(@the_method, {only: list}, &block)
      end

      def except(*list, &block)
        @controller.send(@the_method, {only: list}, &block)
      end

    end
  end
end
