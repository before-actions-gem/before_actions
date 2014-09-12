class DogController < ApplicationController

  before_actions do
    all              { @dog = action_name }
    only(:one)       { @dog = "before one" }
    only(:one, :two) { @dog = "before one and two" }
  end

  def one
  end

  def two
  end

  def three
  end

end
