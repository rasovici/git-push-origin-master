class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question].downcase
    @correct_answer = 'i am going to work'
    if @question == @correct_answer
      @coach_answer = 'Great!'
    elsif @question.include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    # raise
  end
end
