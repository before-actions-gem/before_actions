module BeforeActions
  class Command
    
    def initialize(controller)
      @controller = controller
    end

    def actions(*actions, &block)
      if actions.empty? || actions.map(&:to_s).include?(@controller.action_name)
        @controller.instance_eval(&block)
      end
    end
    
  end
end