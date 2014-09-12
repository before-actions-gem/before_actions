class CatController < ApplicationController

  before_actions do
    all { @cat = action_name }
  end

  after_actions do
    only(:two) { @cat = "after two" }
  end

  def one
  end

  def two
  end

  def three
  end
end
