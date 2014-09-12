class DogController < ApplicationController

  before_actions do
    actions { @dog = action_name }
    actions(:one) { @dog = "before one" }
    actions(:one, :two) { @dog = "before one and two" }
  end

  def one
  end

  def two
  end

  def three
  end

end
