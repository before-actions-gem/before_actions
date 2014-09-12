class AdminFoosController < ApplicationController

  # Use callbacks to share common setup or constraints between actions.
  before_actions do
    actions(:new, :create, :edit, :update, :destroy) { render_not_authorized }
    actions(:index)                          { @admin_foos = AdminFoo.all               }
    actions(:new)                            { raise_it      }
    actions(:create)                         { raise_it      }
    actions(:show, :edit, :update, :destroy) { @admin_foo  = AdminFoo.find(params[:id]) }
  end

  def index
  end

  def show
  end




  def new
    raise_it
  end

  def create
    raise_it
  end

  def edit
    raise_it
  end

  def update
    raise_it
  end

  def destroy
    raise_it
  end

  private

      def render_not_authorized
        render text: "not authorized", status: :unauthorized
      end
      
      def raise_it
        raise "expect not to run this code"
      end


end

