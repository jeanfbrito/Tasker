class TaskHistoriesController < ApplicationController

  before_filter :authenticate_user!

  layout "manager"

  def new
    @task_history = TaskHistory.new(:task_id => params[:task_id], :user_id => params[:user_id])

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @task_history }
    end
  end

  def create
    @task_history = TaskHistory.new(params[:task_history])

    task = Task.find(params[:task_id])
    task.status = @task_history.status
    task.save

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task_history, notice: 'Task History was successfully created.' }
        format.json { render json: @task_history, status: :created, location: @task_history }
      else
        format.html { render action: "new" }
        format.json { render json: @task_history.errors, status: :unprocessable_entity }
      end
    end
  end

end
