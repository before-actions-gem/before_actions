class SquirrelController < ApplicationController

  before_actions do
    all              { @squirrel = action_name }
    except(:one)     { @squirrel = "except before one" }
  end

  def one
  end

  def two
  end

  def three
  end
end
