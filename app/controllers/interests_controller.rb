class InterestsController < ApplicationController
    before_action :set_interest, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    # GET /interests
    # GET /interests.json
    def index
        @interests = @user.interests
    end

    # GET /interests/1
    # GET /interests/1.json
    def show; end

    # GET /interests/new
    def new
        @interest = Interest.new
        respond_to do |format|
          format.html
          format.js
        end
    end

    # GET /interests/1/edit
    def edit; end

    # POST /interests
    # POST /interests.json
    def create
        @interest = Interest.new(interest_params)

        respond_to do |format|
            if @interest.save
              UserInterest.create(interest_id: @interest.id, user_id: current_user.id)
                format.html { redirect_to @interest, notice: 'Interest was successfully created.' }
                format.json { render :show, status: :created, location: @interest }
                format.js

            else
                format.html { render :new }
                format.json { render json: @interest.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # PATCH/PUT /interests/1
    # PATCH/PUT /interests/1.json
    def update
        respond_to do |format|
            if @interest.update(interest_params)
                format.html { redirect_to @interest, notice: 'Interest was successfully updated.' }
                format.json { render :show, status: :ok, location: @interest }
                format.js
            else
                format.html { render :edit }
                format.json { render json: @interest.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # DELETE /interests/1
    # DELETE /interests/1.json
    def destroy
        @interest.destroy
        respond_to do |format|
            format.html { redirect_to interests_url, notice: 'Interest was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_interest
        @interest = Interest.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
        params.require(:interest).permit(:name, :icon)
    end
end
