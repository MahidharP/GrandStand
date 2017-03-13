class EnquiriesController < ApplicationController
    # before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

    # GET /enquiries
    # GET /enquiries.json
    def index
        @enquiries = Enquiry.all
    end

    # GET /enquiries/1
    # GET /enquiries/1.json
    def show; end

    # GET /enquiries/new
    def new
        @enquiry = Enquiry.new
        respond_to do |format|
            format.html
            format.js
        end
    end

    # GET /enquiries/1/edit
    def edit; end

    # POST /enquiries
    # POST /enquiries.json
    def create
        @enquiry = Enquiry.new(enquiry_params)
        @enquiry.user_id = @user.id
        respond_to do |format|
            if @enquiry.save
                trigger_notification
                format.html { redirect_to "/resumes/#{@user.username}", notice: 'Enquiry was successfully created.' }
                format.json { render :show, status: :created, location: @enquiry }
                format.js
            else
                format.html { render :new }
                format.json { render json: @enquiry.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # PATCH/PUT /enquiries/1
    # PATCH/PUT /enquiries/1.json
    def update
        respond_to do |format|
            if @enquiry.update(enquiry_params)
                format.html { redirect_to @enquiry, notice: 'Enquiry was successfully updated.' }
                format.json { render :show, status: :ok, location: @enquiry }
                format.js
            else
                format.html { render :edit }
                format.json { render json: @enquiry.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # DELETE /enquiries/1
    # DELETE /enquiries/1.json
    def destroy
        @enquiry.destroy
        respond_to do |format|
            format.html { redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end

    private

    def trigger_notification
        Notification.enquiry(@user, @enquiry).deliver!
    end

    # Use callbacks to share common setup or constraints between actions.
    # def set_enquiry
    #     @enquiry = Enquiry.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enquiry_params
        params.require(:enquiry).permit(:name, :email, :message, :user_id)
    end
end
