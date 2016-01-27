class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @questions = Question.all
    #@questions=@survey.questions
    #@given_answer=@questions.given_answers
    respond_with(@questions)
  end

  def show
    @question=Question.find(params[:id])

    respond_with(@question)
  end

  def new
    @question = Question.new
    respond_with(@question)
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    @question.save
    respond_with(@question)
  end

  def update
    # @totalResponseCount = 0
    # @averageResponseCount = 0

    # for @question.each do  |question|
    #   totalResponseCount += question.responseCount
    #   raise totalResponseCount.inpect
    #   averageResponseCount = totalResponseCount/Question.count
    # end
    @question.update(question_params)
    respond_with(@question)
  end

  def destroy
    @question.destroy
    respond_with(@question)
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:survey_id, :type, :question_text, :position, :answer_options)
    end
end
