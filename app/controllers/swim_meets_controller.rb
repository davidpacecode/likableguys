class SwimMeetsController < ApplicationController
  before_action :set_swim_meet, only: %i[ show edit update destroy ]

  # GET /swim_meets or /swim_meets.json
  def index
    @swim_meets = SwimMeet.all
  end

  # GET /swim_meets/1 or /swim_meets/1.json
  def show
  end

  # GET /swim_meets/new
  def new
    @swim_meet = SwimMeet.new
  end

  # GET /swim_meets/1/edit
  def edit
  end

  # POST /swim_meets or /swim_meets.json
  def create
    @swim_meet = SwimMeet.new(swim_meet_params)

    respond_to do |format|
      if @swim_meet.save
        format.html { redirect_to @swim_meet, notice: "Swim meet was successfully created." }
        format.json { render :show, status: :created, location: @swim_meet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @swim_meet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swim_meets/1 or /swim_meets/1.json
  def update
    respond_to do |format|
      if @swim_meet.update(swim_meet_params)
        format.html { redirect_to @swim_meet, notice: "Swim meet was successfully updated." }
        format.json { render :show, status: :ok, location: @swim_meet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @swim_meet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swim_meets/1 or /swim_meets/1.json
  def destroy
    @swim_meet.destroy!

    respond_to do |format|
      format.html { redirect_to swim_meets_path, status: :see_other, notice: "Swim meet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swim_meet
      @swim_meet = SwimMeet.includes(:races).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def swim_meet_params
      params.expect(swim_meet: [ :name, :venue, :address, :start_date, :end_date, :course, :description ])
    end
end
