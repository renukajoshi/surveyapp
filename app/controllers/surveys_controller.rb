class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @surveys = Survey.all
    respond_with(@surveys)
  end

  def show
    @survey = Survey.find(params[:id])
  #@category=@post.categories
   @questions=@survey.questions
   @given_answer=GivenAnswer.new
    #respond_with(@survey)
  end

  def new
    @survey = Survey.new
    respond_with(@survey)
  end

  def edit
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.save
    respond_with(@survey)
  end

  def update
    @survey.update(survey_params)
    respond_with(@survey)
  end

  def destroy
    @survey.destroy
    respond_with(@survey)
  end

  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:name)
    end
end
