class UsaSwimmingTimeStandardsController < ApplicationController
  before_action :set_usa_swimming_time_standard, only: %i[ show edit update destroy ]

  # GET /usa_swimming_time_standards or /usa_swimming_time_standards.json
  def index
    @usa_swimming_time_standards = UsaSwimmingTimeStandard.all
  end

  # GET /usa_swimming_time_standards/1 or /usa_swimming_time_standards/1.json
  def show
  end

  # GET /usa_swimming_time_standards/new
  def new
    @usa_swimming_time_standard = UsaSwimmingTimeStandard.new
  end

  # GET /usa_swimming_time_standards/1/edit
  def edit
  end

  # POST /usa_swimming_time_standards or /usa_swimming_time_standards.json
  def create
    @usa_swimming_time_standard = UsaSwimmingTimeStandard.new(usa_swimming_time_standard_params)

    respond_to do |format|
      if @usa_swimming_time_standard.save
        format.html { redirect_to @usa_swimming_time_standard, notice: "Usa swimming time standard was successfully created." }
        format.json { render :show, status: :created, location: @usa_swimming_time_standard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usa_swimming_time_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usa_swimming_time_standards/1 or /usa_swimming_time_standards/1.json
  def update
    respond_to do |format|
      if @usa_swimming_time_standard.update(usa_swimming_time_standard_params)
        format.html { redirect_to @usa_swimming_time_standard, notice: "Usa swimming time standard was successfully updated." }
        format.json { render :show, status: :ok, location: @usa_swimming_time_standard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usa_swimming_time_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usa_swimming_time_standards/1 or /usa_swimming_time_standards/1.json
  def destroy
    @usa_swimming_time_standard.destroy!

    respond_to do |format|
      format.html { redirect_to usa_swimming_time_standards_path, status: :see_other, notice: "Usa swimming time standard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usa_swimming_time_standard
      @usa_swimming_time_standard = UsaSwimmingTimeStandard.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usa_swimming_time_standard_params
      params.expect(usa_swimming_time_standard: [ :standard_type, :age_group, :age, :gender, :event, :course, :b, :bb, :a, :aa, :aaa, :aaaa ])
    end
end
