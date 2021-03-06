class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    # GET /contacts
    # GET /contacts.json
    def index
        @contacts = @user.contacts
    end

    # GET /contacts/1
    # GET /contacts/1.json
    def show; end

    # GET /contacts/new
    def new
        @contact = Contact.new
        respond_to do |format|
            format.html
            format.js
        end
    end

    # GET /contacts/1/edit
    def edit; end

    # POST /contacts
    # POST /contacts.json
    def create
        @contact = Contact.new(contact_params)
        @contact.user_id = current_user.id
        respond_to do |format|
            if @contact.save
                format.html { redirect_to root_path, notice: 'Contact was successfully created.' }
                format.json { render :show, status: :created, location: @contact }
                format.js
            else
                format.html { render :new }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # PATCH/PUT /contacts/1
    # PATCH/PUT /contacts/1.json
    def update
        respond_to do |format|
            if @contact.update(contact_params)
                format.html { redirect_to root_path, notice: 'Contact was successfully updated.' }
                format.json { render :show, status: :ok, location: @contact }
                format.js
            else
                format.html { render :edit }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # DELETE /contacts/1
    # DELETE /contacts/1.json
    def destroy
        @contact.destroy
        respond_to do |format|
            format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_contact
        @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
        params.require(:contact).permit(:user_id, :mobile, :email, :website, :address)
    end
end
