class QuestionsController < ApplicationController

  def ask
  end

  def answer
    specific_question = "I am going to work"

    @the_answer = if params[:ask] == specific_question|| params[:ask] == specific_question.upcase
                    "Great!"
                  elsif params[:ask].include?("?")
                    "Silly question, get dressed and go to work!"
                  else
                    "I don't care, get dressed and go to work!"
                  end
  end

end
