class PersonalSkillsController < ApplicationController
    before_action :set_personal_skill, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    # GET /personal_skills
    # GET /personal_skills.json
    def index
        @personal_skills = @user.personal_skills
    end

    # GET /personal_skills/1
    # GET /personal_skills/1.json
    def show; end

    # GET /personal_skills/new
    def new
        @personal_skill = PersonalSkill.new
        respond_to do |format|
          format.html
          format.js
        end
    end

    # GET /personal_skills/1/edit
    def edit; end

    # POST /personal_skills
    # POST /personal_skills.json
    def create
        @personal_skill = PersonalSkill.new(personal_skill_params)

        respond_to do |format|
            if @personal_skill.save
              UserPersonalSkill.create(personal_skill_id: @personal_skill.id, user_id: current_user.id)
                format.html { redirect_to @personal_skill, notice: 'Personal skill was successfully created.' }
                format.json { render :show, status: :created, location: @personal_skill }
                format.js
            else
                format.html { render :new }
                format.json { render json: @personal_skill.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # PATCH/PUT /personal_skills/1
    # PATCH/PUT /personal_skills/1.json
    def update
        respond_to do |format|
            if @personal_skill.update(personal_skill_params)
                format.html { redirect_to @personal_skill, notice: 'Personal skill was successfully updated.' }
                format.json { render :show, status: :ok, location: @personal_skill }
                format.js
            else
                format.html { render :edit }
                format.json { render json: @personal_skill.errors, status: :unprocessable_entity }
                format.js
            end
        end
    end

    # DELETE /personal_skills/1
    # DELETE /personal_skills/1.json
    def destroy
        @personal_skill.destroy
        respond_to do |format|
            format.html { redirect_to personal_skills_url, notice: 'Personal skill was successfully destroyed.' }
            format.json { head :no_content }
            format.js
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_personal_skill
        @personal_skill = PersonalSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_skill_params
        params.require(:personal_skill).permit(:name)
    end
end
