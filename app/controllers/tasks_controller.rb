class TasksController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tasks = Task.arrange(:order => :created_at)
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new

    @task = Task.new(:parent_id => params[:parent_id], :project_id => params[:project_id])

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @task }
    end
  end


  def edit
    @task = Task.find(params[:id])
    render :layout => !request.xhr?
  end

  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

end
