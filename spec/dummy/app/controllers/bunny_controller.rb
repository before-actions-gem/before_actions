class BunnyController < ApplicationController

  before_actions do
    actions { @bunny = action_name }
  end

  around_actions do
    actions(:two) do |controller, action|
      @bunny += "-around two-"
      action.call
      @bunny += "-around two-"
    end
  end

  def one
  end

  def two
    @bunny += " -single-responsibility- "
  end

  def three
  end
end
