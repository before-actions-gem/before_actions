class AdminFoosController < ApplicationController

  # Use callbacks to share common setup or constraints between actions.
  before_actions do
    actions(:new, :create, :edit, :update, :destroy) { render text: "not authorized", status: :unauthorized }
    actions(:index)                          { @admin_foos = AdminFoo.all               }
    actions(:new)                            { raise "expect not to run this code"      }
    actions(:create)                         { raise "expect not to run this code"      }
    actions(:show, :edit, :update, :destroy) { @admin_foo  = AdminFoo.find(params[:id]) }
  end

  def index
  end

  def show
  end




  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

