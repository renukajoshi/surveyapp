class GivenAnswersController < ApplicationController
  before_action :set_given_answer, only: [:show, :edit, :update, :destroy]

  before_filter :find_survey!
  respond_to :html

  def index
    @given_answers = GivenAnswer.all
    respond_with(@given_answers)
  end

  def show
    respond_with(@given_answer)
  end

  def new
    #@survey = Survey.find(params[:survey_id])
   @given_answer = GivenAnswer.new(given_answer_params)  
   #@questions = @survey.questions
    #respond_with(@given_answer)
  end

  def edit
  end

  def create
    #raise params.inspect
    total_question = params[:total_question].to_i
      #raise total_question.inspect
      for i in 1..total_question
        if params['types_'+i.to_s]== "checkbox"
             question_answer = params[:given_answer][i.to_s][:answer_option]
             #raise question_answer.inspect
             question_answer.delete('0')
             question_answer = question_answer.join('\n')
             #raise question_answer.inspect
             @attempt_questions = GivenAnswer.new( :survey_id => params[:survey_id] ,:question_id => i , :answer => question_answer)
             @attempt_questions.save
             #raise question_answer.inspect
        else
            question_answer = params[:given_answer][i.to_s][:answer_option]
          #raise question_answer.inspect
            @attempt_questions = GivenAnswer.new( :survey_id => params[:survey_id] ,:question_id => i , :answer => question_answer)
            @attempt_questions.save
        end
        # @survey=Survey.find(params[:survey_id])
        # redirect_to survey_given_answers_path(@survey)
          
      end
        @survey=Survey.find(params[:survey_id])
       redirect_to survey_given_answers_path(@survey)
        #render :index
    # @givenans=GivenAnswer.find[]
    # @givenanswer=GivenAnswer.new(given_answer_params)

    # if @givenanswer.save
    #   redirect_to surveys_path
    # else
    #   render :new
    # end

  #   t=params[:total_questions]
  #   for i in 1..t.to_i
  #       #raise params.inspect
  #      if params['types'+i.to_s].to_i==2
  #       checkbox_hash=params['answer'+i.to_s]
  #       #raise checkbox_hash.inspect
  #       s=checkbox_hash.size
  #       for j in 0...s
  #         ans=checkbox_hash[j]
          
  #           @answer=GivenAnswer.new(:survey_id => params[:survey_id],:question_id=>i,:answer => ans)
  #           @answer.save
        
    
  #     end
  #     else
  #       @answer=GivenAnswer.new(:survey_id => params[:survey_id],:question_id=>i,:answer => params['answer'+i.to_s])
  #       @answer.save
  #     end
   
  # end
end

  def update
    @given_answer.update(given_answer_params)
    respond_with(@given_answer)
  end

  def destroy
    @given_answer.destroy
    respond_with(@given_answer)
  end


  # def results

  #     @attempt = GivenAnswer.find(params[:id])
  #     @attempt_results =GivenAnswerResults.new(given_answer: @attempt).extract

  #     respond_to do |format|
  #       format.json { render json:@attempt_results, root: false }
  #       format.html
  #       format.js
  #     end
  #   end


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
