class ProficiencySkillsController < ApplicationController
    before_action :set_proficiency_skill, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    # GET /proficiency_skills
    # GET /proficiency_skills.json
    def index
        @proficiency_skills = ProficiencySkill.all
    end

    # GET /proficiency_skills/1
    # GET /proficiency_skills/1.json
    def show; end

    # GET /proficiency_skills/new
    def new
        @proficiency_skill = ProficiencySkill.new
    end

    # GET /proficiency_skills/1/edit
    def edit; end

    # POST /proficiency_skills
    # POST /proficiency_skills.json
    def create
        @proficiency_skill = ProficiencySkill.new(proficiency_skill_params)

        respond_to do |format|
            if @proficiency_skill.save
                format.html { redirect_to @proficiency_skill, notice: 'Proficiency skill was successfully created.' }
                format.json { render :show, status: :created, location: @proficiency_skill }

            else
                format.html { render :new }
                format.json { render json: @proficiency_skill.errors, status: :unprocessable_entity }

            end
        end
    end

    # PATCH/PUT /proficiency_skills/1
    # PATCH/PUT /proficiency_skills/1.json
    def update
        respond_to do |format|
            if @proficiency_skill.update(proficiency_skill_params)
                format.html { redirect_to @proficiency_skill, notice: 'Proficiency skill was successfully updated.' }
                format.json { render :show, status: :ok, location: @proficiency_skill }
            else
                format.html { render :edit }
                format.json { render json: @proficiency_skill.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /proficiency_skills/1
    # DELETE /proficiency_skills/1.json
    def destroy
        @proficiency_skill.destroy
        respond_to do |format|
            format.html { redirect_to proficiency_skills_url, notice: 'Proficiency skill was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_proficiency_skill
        @proficiency_skill = ProficiencySkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proficiency_skill_params
        params.require(:proficiency_skill).permit(:name)
    end
end
