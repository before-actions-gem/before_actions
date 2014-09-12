class CatController < ApplicationController

  before_actions do
    actions { @cat = action_name }
  end

  after_actions do
    actions(:two) { @cat = "after two" }
  end

  def one
  end

  def two
  end

  def three
  end
end
