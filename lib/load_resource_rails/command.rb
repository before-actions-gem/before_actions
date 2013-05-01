module LoadResourceRails
  class Command
    
    def initialize(controller)
      @controller = controller
    end

    def before(&block)
      @controller.instance_eval(&block)
    end
    alias :after :before

    def for_action(*actions, &block)
      if actions.map(&:to_s).include?(@controller.action_name)
        @controller.instance_eval(&block)
      end
    end
    alias :for_actions :for_action

  end
end