class ProjectsController < ApplicationController
  before_action :authenticate_user!

  layout "manager"

  def index
    @projects = current_user.projects.order('created_at')
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @project = Project.new(:user => current_user)

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @project }
    end
  end

  def edit
    @project = Project.find(params[:id])
    render :layout => !request.xhr?
  end

  def create
    @project = Project.new(permitted_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(permitted_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  protected

  def permitted_params
    params.require(:project).permit(:title, :description)
  end
end
