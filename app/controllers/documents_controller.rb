class DocumentsController < ApplicationController

  before_action :authenticate_user!

  layout "manager"

  def new
    @document = Document.new(:project_id => params[:project_id])

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @document }
    end
  end
  def create
    @document = Document.new(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'document was successfully created.' }
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end
end