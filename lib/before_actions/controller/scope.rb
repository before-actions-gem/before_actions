module BeforeActions
  module Controller
    class Scope

      def initialize(controller, the_method)
        @controller = controller
        @the_method = the_method
      end

      def actions(*list, &block)
        if list.empty?
          @controller.send(@the_method, &block)
        else
          @controller.send(@the_method, {only: list}, &block)
        end
      end

    end
  end
end
