class ArgumentsController < ApplicationController
  before_action :set_argument, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  # GET /arguments
  def index
    @arguments = Argument.all

    render json: @arguments
  end

  # GET /arguments/1
  def show
    render json: @argument
  end

  # POST /arguments
  def create
    @argument = Argument.new(argument_params)

    if @argument.save
      render json: @argument, status: :created, location: @argument
    else
      render json: @argument.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arguments/1
  def update
    if @argument.update(argument_params)
      render json: @argument
    else
      render json: @argument.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arguments/1
  def destroy
    @argument.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_argument
      @argument = Argument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def argument_params
      params.require(:argument).permit(:title, :description, :side_id)
    end
end
