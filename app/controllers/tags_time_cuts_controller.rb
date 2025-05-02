class TagsTimeCutsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_tags_time_cut, only: %i[ show edit update destroy ]

  # GET /tags_time_cuts or /tags_time_cuts.json
  def index
    @tags_time_cuts = TagsTimeCut.all
  end

  # GET /tags_time_cuts/1 or /tags_time_cuts/1.json
  def show
  end

  # GET /tags_time_cuts/new
  def new
    @tags_time_cut = TagsTimeCut.new
  end

  # GET /tags_time_cuts/1/edit
  def edit
  end

  # POST /tags_time_cuts or /tags_time_cuts.json
  def create
    @tags_time_cut = TagsTimeCut.new(tags_time_cut_params)

    respond_to do |format|
      if @tags_time_cut.save
        format.html { redirect_to @tags_time_cut, notice: "Tags time cut was successfully created." }
        format.json { render :show, status: :created, location: @tags_time_cut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tags_time_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tags_time_cuts/1 or /tags_time_cuts/1.json
  def update
    respond_to do |format|
      if @tags_time_cut.update(tags_time_cut_params)
        format.html { redirect_to @tags_time_cut, notice: "Tags time cut was successfully updated." }
        format.json { render :show, status: :ok, location: @tags_time_cut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tags_time_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_time_cuts/1 or /tags_time_cuts/1.json
  def destroy
    @tags_time_cut.destroy!

    respond_to do |format|
      format.html { redirect_to tags_time_cuts_path, status: :see_other, notice: "Tags time cut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tags_time_cut
      @tags_time_cut = TagsTimeCut.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tags_time_cut_params
      params.expect(tags_time_cut: [ :age_group, :gender, :distance, :stroke, :course, :tags_time, :bonus_time ])
    end
end
