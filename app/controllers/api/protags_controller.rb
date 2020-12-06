class Api::ProtagsController < ApplicationController
  def index
    @protags = Protag.all
  end
  
  def show
      @pro_tag = Pro_tag.where(task_id: @task.id)
  end

  def create
    @protag = Protag.new(protag_params)
    if @protag.save
      head :no_content
    else
      render json: @protag.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   @pro_tag = Pro_tag.find(params[:id])
  #   if @pro_tag.update(task_params)
  #     render :show, status: :ok
  #   else
  #     render json: @protag.errors, status: :unprocessable_entity
  #   end
  # end
  
  def protag_params
     params.permit(:tag, :task_id)
  end
end