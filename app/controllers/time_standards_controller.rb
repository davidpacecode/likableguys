class TimeStandardsController < ApplicationController
  before_action :set_time_standard, only: %i[ show edit update destroy ]

  # GET /time_standards or /time_standards.json
  def index
    @time_standards = TimeStandard.all
  end

  # GET /time_standards/1 or /time_standards/1.json
  def show
  end

  # GET /time_standards/new
  def new
    @time_standard = TimeStandard.new
  end

  # GET /time_standards/1/edit
  def edit
  end

  # POST /time_standards or /time_standards.json
  def create
    @time_standard = TimeStandard.new(time_standard_params)

    respond_to do |format|
      if @time_standard.save
        format.html { redirect_to @time_standard, notice: "Time standard was successfully created." }
        format.json { render :show, status: :created, location: @time_standard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @time_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_standards/1 or /time_standards/1.json
  def update
    respond_to do |format|
      if @time_standard.update(time_standard_params)
        format.html { redirect_to @time_standard, notice: "Time standard was successfully updated." }
        format.json { render :show, status: :ok, location: @time_standard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @time_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_standards/1 or /time_standards/1.json
  def destroy
    @time_standard.destroy!

    respond_to do |format|
      format.html { redirect_to time_standards_path, status: :see_other, notice: "Time standard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_standard
      @time_standard = TimeStandard.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def time_standard_params
      params.expect(time_standard: [ :standard_type, :age_group, :age, :gender, :distance, :stroke, :sort_order, :course, :b, :bb, :a, :aa, :aaa, :aaaa ])
    end
end
