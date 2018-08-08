class LessonsController < ApplicationController
  include LessonsHelper
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  # GET /lessons.json
  def index
    @grades = Grade.all
    @subjects = Subject.all
    @lessons = Lesson.where(nil)
    @lessons = @lessons.grade_id(params[:grade_id]) if params[:grade_id].present?
    @lessons = @lessons.subject_id(params[:subject_id]) if params[:subject_id].present?
  end
  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @grades = Grade.all
    @subject = Subject.all
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:grade_id, :subject_id, :title_lesson, :title_unit, :title_content,
      :last_lesson_time, :last_lesson_content, :object, :intro_time, :intro_content, :instruction_time,
      :instruction_content, :practice_time, :practice_content, :working_time, :working_content, :diff_time,
      :diff_support, :diff_enrich, :review_time, :assess_content, :review_content)
    end
end
