class GivenAnswersController < ApplicationController
  before_action :set_given_answer, only: [:show, :edit, :update, :destroy]

  #before_filter :find_survey!
  respond_to :html

  def index
    @given_answers = GivenAnswer.all
    respond_with(@given_answers)
  end

  def show
    respond_with(@given_answer)
  end

  def new
   # raise params.inspect
    @given_answer = GivenAnswer.new(given_answer_params)
  end

  def edit
  end


    def create
      #raise params.inspect
      #@given_answer=GivenAnswer.new(:survey_id => params[:survey_id], :question_id => params[:question_id] , :answer => params[:answer], :user_id => current_user.id)
          #if @given_answer.save
            params[:given_answer].each do |question_id, given_answer_attributes|
              answer=given_answer_attributes[:answer_option]
                #raise answer.inspect
              answer == if answer.is_a?(Array)
                  #raise answer.inspect
                stripped_answers = strip_checkbox_answers(answer)
                answer=stripped_answers.join('\n')    
              else
                 answer
              end
                #raise params.inspect
                  @attempts = GivenAnswer.new(:survey_id => params[:survey_id], :question_id =>question_id , :answer =>  answer, :user_id => current_user.id)
                  @attempts.save
            end
        @survey = Survey.find(params[:survey_id])
        redirect_to survey_given_answers_path(@survey) 
    end

    def strip_checkbox_answers(answer)
        answer.reject(&:blank?).reject { |t| t == "0" }
    end


    def show   
    end    


    def update
      @given_answer.update(given_answer_params)
      respond_with(@given_answer)
    end

    def destroy
      @given_answer.destroy
      respond_with(@given_answer)
    end

  private

    def find_survey!
      @question_group = Survey.find(params[:survey_id])
    end


    def given_answer_params
      answer_params = { params: (params[:given_answer] || {}) }
      #answer_params.merge(survey: @survey)
    end

    def set_given_answer
      @given_answer = GivenAnswer.find(params[:id])
    end
end
