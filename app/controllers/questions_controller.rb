class QuestionsController < ApplicationController
  def ask
  end

  def answer
    p params['user_input']
    @user_input = params['user_input']
    if @user_input == 'I am going to work'
      @answer = 'Great!'
    elsif @user_input.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end

    # prepare a @answer with the content of the asnwer
  end
end
