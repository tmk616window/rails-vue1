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

  def update
    @protag = Protag.find(params[:id])
    if @protag.update(protag_params)
      render :show, status: :ok
    else
      render json: @protag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @protag = Protag.find(params[:id])
    if @protag.destroy
      head :no_content
    else
      render json: @protag.errors, status: :unprocessable_entity
    end
  end

  def protag_params
     params.require(:protag).permit(:tag, :task_id)
  end
end