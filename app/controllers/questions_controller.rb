class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @answer = build_answer(@question)
  end

  private

  def build_answer(question)
    if question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
