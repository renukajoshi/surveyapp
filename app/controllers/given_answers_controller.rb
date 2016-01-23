class GivenAnswersController < ApplicationController
  before_action :set_given_answer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @given_answers = GivenAnswer.all
    respond_with(@given_answers)
  end

  def show
    respond_with(@given_answer)
  end

  def new
    @survey = Survey.find(params[:survey_id])
   @given_answer = GivenAnswer.new  
   @questions = @survey.questions
    #respond_with(@given_answer)
  end

  def edit
  end

  def create
    #raise params.inspect
    t=params[:total_questions]
    for i in 1..t.to_i
        #raise params.inspect
       if params['types'+i.to_s].to_i==2
        checkbox_hash=params['answer'+i.to_s]
        #raise checkbox_hash.inspect
        s=checkbox_hash.size
        for j in 0...s
          ans=checkbox_hash[j]
          
            @answer=GivenAnswer.new(:survey_id => params[:survey_id],:question_id=>i,:answer => ans)
            @answer.save
        
    
      end
      else
        @answer=GivenAnswer.new(:survey_id => params[:survey_id],:question_id=>i,:answer => params['answer'+i.to_s])
        @answer.save
      end
   
  end
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
    def set_given_answer
      @given_answer = GivenAnswer.find(params[:id])
    end

    def given_answer_params
      params.require(:given_answer).permit(:survey_id, :question_id, :answer)
    end
end
