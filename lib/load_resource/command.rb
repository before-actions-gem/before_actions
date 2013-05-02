module LoadResource
  class Command
    
    def initialize(controller)
      @controller = controller
    end

    def for_action(*actions, &block)
      if actions.empty? || actions.map(&:to_s).include?(@controller.action_name)
        @controller.instance_eval(&block)
      end
    end
    alias :for_actions :for_action
    alias :before :for_action
    alias :after :for_action

  end
end