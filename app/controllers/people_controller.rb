class PeopleController < ApplicationController
  before_action :set_position, only: %i[ index new ]
  before_action :set_person, only: %i[ show edit update destroy ]

  # GET /people
  def index
    @people = @position.people.order(:updated_at)
    @people = @people.where(stage: params[:stage]) if params[:stage]
  end

  # GET /people/1
  def show
  end

  # GET /people/new
  def new
    @person = @position.people.new(stage: params[:stage])
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to position_path(@person.position), notice: "Person was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to position_path(@person.position), notice: "Person was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy!
    redirect_to people_url, notice: "Person was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:position_id])
    end

    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:position_id, :stage, :first_name, :last_name, :email, :note)
    end
end
