module RockPaperScissorsHelper
  def choice_to_image_path(choice)
    "#{choice.to_s.downcase}.png"
  end

  def result_to_sentence(result)
    (result == :Tie ? "" : "You ") + result.to_s
  end

  def result_image_path(result)
    case result
      when :Tie
        "http://img.pandawhale.com/68590-George-Costanza-shrug-gif-IsUf.gif"
      when :Win
        "http://i772.photobucket.com/albums/yy8/iRikiPWNurFace/Misc/00-great-success.gif"
      when :Lose
        "http://www.ohmagif.com/wp-content/uploads/2013/12/russian-crane-tank-lifting-fail.gif"
    end
  end
end
