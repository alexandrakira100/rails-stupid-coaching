class QuestionsController < ApplicationController
   def ask
    @question = :question
    # render plain: "Question: #{params[:question]}"
  end

  def answer
    @question = params[:question]
    @question = ""
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
     @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end

