class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:reponse] == "I am going to work"
      @answer = "great"
    elsif params[:reponse].end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:reponse].end_with?('e')
      @answer = "C'est fou comme je m'en fou! ne me dérange plus! Sinon je te vire"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
