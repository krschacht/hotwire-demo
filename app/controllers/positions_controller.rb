class PositionsController < ApplicationController
  before_action :set_position, only: %i[ show edit update destroy ]

  # GET /positions
  def index
    @positions = Position.all
  end

  # GET /positions/1
  def show
  end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions
  def create
    @position = Position.new(position_params)

    if @position.save
      redirect_to @position, notice: "Position was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /positions/1
  def update
    if @position.update(position_params)
      redirect_to @position, notice: "Position was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /positions/1
  def destroy
    @position.destroy!
    redirect_to positions_url, notice: "Position was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_params
      params.require(:position).permit(:title)
    end
end
