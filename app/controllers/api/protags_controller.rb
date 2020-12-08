class Api::ProtagsController < ApplicationController
  def index
    @protags = Protag.where(params[:task_id])
  end
  
  def show
    @protag = Protag.where(task_id: params[:id])
  #     @protag = Protag.find_by(task_id: @task.id)
  end

  def create
    @protag = Protag.new(protag_params)
    if @protag.save
      head :no_content
    else
      render json: @protag.errors, status: :unprocessable_entity
    end
  end

  def update_all
    @protag = Protag.where(task_id: @task.id)
    if @protag.update_all(protag_params)
      render :show, status: :ok
    else
      render json: @protag.errors, status: :unprocessable_entity
    end
  end
  
  def protag_params
     params.permit(:tag, :task_id)
  end
end