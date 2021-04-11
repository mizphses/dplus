class SyllabusesController < ApplicationController
  before_action :set_syllabus, only: %i[ show edit update destroy ]

  # GET /syllabuses or /syllabuses.json
  def index
    @syllabuses = Syllabus.all
  end

  # GET /syllabuses/1 or /syllabuses/1.json
  def show
  end

  # GET /syllabuses/new
  def new
    @syllabus = Syllabus.new
  end

  # GET /syllabuses/1/edit
  def edit
  end

  # POST /syllabuses or /syllabuses.json
  def create
    @syllabus = Syllabus.new(syllabus_params)

    respond_to do |format|
      if @syllabus.save
        format.html { redirect_to @syllabus, notice: "Syllabus was successfully created." }
        format.json { render :show, status: :created, location: @syllabus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabuses/1 or /syllabuses/1.json
  def update
    respond_to do |format|
      if @syllabus.update(syllabus_params)
        format.html { redirect_to @syllabus, notice: "Syllabus was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabuses/1 or /syllabuses/1.json
  def destroy
    @syllabus.destroy
    respond_to do |format|
      format.html { redirect_to syllabuses_url, notice: "Syllabus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus
      @syllabus = Syllabus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_params
      params.require(:syllabus).permit(:title, :year, :term, :day, :time, :faculty, :teacher, :grade, :degree, :condition, :lang, :overview, :purpose, :goal, :contents, :outofclass_content, :outofclass_tile, :evaluation, :evaluation_note, :feedback, :feedback_note, :activelearning_content, :activelearning_howto, :experience, :experience_contents, :experience_reduction, :textbook, :note, :url, :comment)
    end
end
