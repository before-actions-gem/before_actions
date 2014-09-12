<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController

  # Use callbacks to share common setup or constraints between actions.
  before_actions do
    actions                                  {  } # load your nested resource's parent here if you need one
    actions(:index)                          { @<%= plural_table_name %> = <%= orm_class.all(class_name) %>                }
    actions(:new)                            { @<%= singular_table_name %>  = <%= orm_class.build(class_name) %>                }
    actions(:create)                         { @<%= singular_table_name %>  = <%= orm_class.build(class_name, "#{singular_table_name}_params") %> }
    actions(:show, :edit, :update, :destroy) { @<%= singular_table_name %>  = <%= orm_class.find(class_name, "params[:id]") %>  }
    actions                                  {  } # run your authorization logic here if you need one
  end

  # GET <%= route_url %>
  # GET <%= route_url %>.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: <%= "@#{plural_table_name}" %> }
    end
  end



  # GET <%= route_url %>/new
  def new
  end

  # GET <%= route_url %>/1
  # GET <%= route_url %>/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: <%= "@#{singular_table_name}" %> }
    end
  end

  # GET <%= route_url %>/1/edit
  def edit
  end



  # POST <%= route_url %>
  # POST <%= route_url %>.json
  def create
    respond_to do |format|
      if @<%= orm_instance.save %>
        format.html { redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully created.'" %> }
        format.json { render json: <%= "@#{singular_table_name}" %>, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: <%= "@#{orm_instance.errors}" %>, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT <%= route_url %>/1
  # PATCH/PUT <%= route_url %>/1.json
  def update
    respond_to do |format|
      if @<%= orm_instance.update("#{singular_table_name}_params") %>
        format.html { redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully updated.'" %> }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: <%= "@#{orm_instance.errors}" %>, status: :unprocessable_entity }
      end
    end
  end

  # DELETE <%= route_url %>/1
  # DELETE <%= route_url %>/1
  def destroy
    respond_to do |format|
      if @<%= orm_instance.destroy %>
        format.html { redirect_to <%= index_helper %>_url, notice: <%= "'#{human_name} was successfully destroyed.'" %> }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: <%= "@#{orm_instance.errors}" %>, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def <%= "#{singular_table_name}_params" %>
      params.require(<%= ":#{singular_table_name}" %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
    end
end
<% end -%>
