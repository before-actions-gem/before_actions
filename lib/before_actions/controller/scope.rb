module BeforeActions
  module Controller
    class Scope

      def initialize(controller, the_method_key)
        @controller = controller
        @the_method_key = the_method_key
      end

      def all(&block)
        @controller.send(the_method, &block)
      end

      def only(*list, &block)
        @controller.send(the_method, {only: list}, &block)
      end

      def except(*list, &block)
        @controller.send(the_method, {except: list}, &block)
      end

      private

      def the_method
        "#{@the_method_key}_#{the_method_postfix}"
      end

      def the_method_postfix
        if ::Rails::VERSION::MAJOR == 3
          'filter'
        else
          'action'
        end
      end

    end
  end
end
