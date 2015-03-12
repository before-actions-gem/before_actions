class FoosController < ApplicationController

  # Use callbacks to share common setup or constraints between actions.
  before_actions do
    # all                                   {  } # load your nested resource's parent here if you need one
    only(:index)                          { @foos = Foo.all                }
    only(:new)                            { @foo  = Foo.new                }
    only(:create)                         { @foo  = Foo.new(foo_params)    }
    only(:show, :edit, :update, :destroy) { @foo  = Foo.find(params[:id])  }
    # all                                   {  } # run your authorization logic here if you need one
  end

  # GET /foos
  # GET /foos.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foos }
    end
  end



  # GET /foos/new
  def new
  end

  # GET /foos/1
  # GET /foos/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foo }
    end
  end

  # GET /foos/1/edit
  def edit
  end



  # POST /foos
  # POST /foos.json
  def create
    respond_to do |format|
      if @foo.save
        format.html { redirect_to @foo, notice: 'Foo was successfully created.' }
        format.json { render json: @foo, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foos/1
  # PATCH/PUT /foos/1.json
  def update
    respond_to do |format|
      if foo_update
        format.html { redirect_to @foo, notice: 'Foo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foos/1
  # DELETE /foos/1
  def destroy
    respond_to do |format|
      if @foo.destroy
        format.html { redirect_to foos_url, notice: 'Foo was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foo.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def foo_params
      if ::Rails::VERSION::MAJOR == 3
        params[:foo]
      else
        params.require(:foo).permit(:bar)
      end
    end

    def foo_update
      if ::Rails::VERSION::MAJOR == 3
        @foo.update_attributes(foo_params)
      else
        @foo.update(foo_params)
      end
    end
end

