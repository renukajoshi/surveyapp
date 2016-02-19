class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: :index

  respond_to :html

  def index
    @surveys = Survey.all
    respond_with(@surveys)
  end

  def show
    check = GivenAnswer.find_by(:user_id => current_user.id , :survey_id => @survey.id)
    if check.nil?
      @survey = Survey.find(params[:id])
      @given_answer = GivenAnswer.new  
      @questions = @survey.questions
    else
      flash[:error]="You already attempt this Survey....!!!"
      redirect_to surveys_path
    end
  end

  def new 
    @survey = Survey.new
    @survey.given_answers.build
    respond_with(@survey)
  end

  def edit
    @survey= Survey.find(params[:id])
    @question_results =GivenAnswer.where(:survey_id => @survey.id)
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
      params.require(:survey).permit(:name, given_answers_attributes: [:id , :survey_id , :question_id , :user_id])
      # this is survey params
    end
end
