class ResumesController < ApplicationController
    def index
        @user = User.find_by_username(params[:id])
        render layout: nil
    end
end
