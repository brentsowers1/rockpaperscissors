class RockPaperScissorsController < ApplicationController
  CHOICES = [
    :Rock,
    :Paper,
    :Scissors
  ]

  RESULTS = [
    :Win,
    :Lose,
    :Tie
  ]

  def index
    @choices = CHOICES.collect {|x| [x.to_s,x.to_s] }
  end

  def throw
    @user_choice = params.require(:sign).to_sym
    raise Exception, "Invalid choice" unless CHOICES.include?(@user_choice)
    @computer_choice = CHOICES[Random.rand(3)]
    @result = win_or_lose_or_tie(@user_choice, @computer_choice)
  end

  private

  def win_or_lose_or_tie(user_choice, computer_choice)
    if user_choice == computer_choice
      :Tie
    else
      case user_choice
        when :Rock
          computer_choice == :Paper ? :Lose : :Win
        when :Paper
          computer_choice == :Scissors ? :Lose : :Win
        when :Scissors
          computer_choice == :Rock ? :Lose : :Win
      end
    end
  end
end
