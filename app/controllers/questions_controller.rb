class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question].capitalize
    if @question == 'I am going to work' || @question == "I'm going to work" || @question == 'Im going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.include? '!'
      @answer = "Don't yell at me!!!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
