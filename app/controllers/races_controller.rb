class RacesController < ApplicationController
  allow_unauthenticated_access only: %i[ best_times trends ]
  before_action :set_race, only: %i[ show edit update destroy ]

  # GET /races or /races.json
  def index
    @races = Race.all
  end

  # GET /races/1 or /races/1.json
  def show
  end

  # GET /races/new
  def new
    @race = Race.new
  end

  # GET /races/1/edit
  def edit
  end

  # POST /races or /races.json
  def create
    @race = Race.new(race_params)

    respond_to do |format|
      if @race.save
        format.html { redirect_to @race, notice: "Race was successfully created." }
        format.json { render :show, status: :created, location: @race }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /races/1 or /races/1.json
  def update
    respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to @race, notice: "Race was successfully updated." }
        format.json { render :show, status: :ok, location: @race }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1 or /races/1.json
  def destroy
    @race.destroy!

    respond_to do |format|
      format.html { redirect_to races_path, status: :see_other, notice: "Race was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def best_times
    @best_races = Race.joins(:swim_meet)
      .select("DISTINCT ON (swim_meets.course, races.distance, races.stroke) swim_meets.course, races.distance, races.stroke, races.final_time, races.race_date")
      .order("swim_meets.course, races.distance, races.stroke, races.final_time ASC")
  end

  def trends
    @distinct_races = Race.joins(:swim_meet)
      .select("swim_meets.course", "races.distance", "races.stroke").distinct.order("swim_meets.course")
    @races = Race.joins(:swim_meet)
      .select("races.*", "swim_meets.course")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def race_params
      params.expect(race: [ :distance, :stroke, :event_no, :heat, :lane, :seed_time, :final_time, :place, :race_date, :dq, :swim_meet_id ])
    end
end
