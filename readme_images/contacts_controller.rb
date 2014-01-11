class ContactsController < ApplicationController

  # load and authorize resources
  before_actions do
    # all actions
    # actions {  }

    # list actions
    actions(:index) { @contacts = Contact.all }

    # building actions
    actions(:new, :create) { @contact = Contact.new(contact_params) }

    # member actions, will raise a 404 if the model is not found
    actions(:show, :edit, :update, :destroy) { @contact = Contact.find(params[:id]) }

    # all actions
    # actions {  }
  end

  # NESTED
  # # load and authorize resources
  # before_actions do
  #   # all actions
  #   actions { @company = Company.find(params[:company_id]) }

  #   # list actions
  #   actions(:index) { @contacts = @company.contacts }

  #   # building actions
  #   actions(:new, :create) { @contact = @company.contacts.build(contact_params) }

  #   # member actions, will raise a 404 if the model is not found
  #   actions(:show, :edit, :update, :destroy) { @contact = @company.contacts.find(params[:id]) }

  #   # all actions
  #   # actions {  }
  # end

  # cancan method
  authorize_resource



  # GET /contacts
  def index
  end


  # GET /contacts/1
  def show
  end

  # GET /contacts/new
  def new
  end

  # GET /contacts/1/edit
  def edit
  end


  # POST /contacts
  def create
    @contact.user = current_user
    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /contacts/1
  def destroy
    if @contact.destroy
      redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
    else
      render action: 'edit'
    end
  end




  private

    # Only allow a trusted parameter "white list" through.
    def contact_params
      if params[:contact]
        params.require(:contact).permit(:name)
      else
        {}
      end
    end
end


