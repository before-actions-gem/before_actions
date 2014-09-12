class FoosController < ApplicationController

  # Use callbacks to share common setup or constraints between actions.
  before_actions do
    actions                                  {  } # load your nested resource's parent here if you need one
    actions(:index)                          { @foos = Foo.all                }
    actions(:new)                            { @foo  = Foo.new                }
    actions(:create)                         { @foo  = Foo.new(foo_params)    }
    actions(:show, :edit, :update, :destroy) { @foo  = Foo.find(params[:id])  }
    actions                                  {  } # run your authorization logic here if you need one
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
      if @foo.update(foo_params)
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
      params.require(:foo).permit(:bar)
    end
end

