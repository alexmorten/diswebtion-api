class SidesController < ApplicationController
  before_action :set_side, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  # GET /sides
  def index
    @sides = Side.all

    render json: @sides
  end

  # GET /sides/1
  def show
    render json: @side
  end

  # POST /sides
  def create
    @side = Side.new(side_params)
    @side.user=@current_user
    if @side.save
      render json: @side, status: :created, location: @side
    else
      render json: @side.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sides/1
  def update
    if @side.update(side_params)
      render json: @side
    else
      render json: @side.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sides/1
  def destroy
    @side.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side
      @side = Side.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def side_params
      params.require(:side).permit(:title, :description, :topic_id)
    end
end
