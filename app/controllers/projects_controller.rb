class ProjectsController < ApplicationController
	def index
    @projects = Project.order('created_at')
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

end