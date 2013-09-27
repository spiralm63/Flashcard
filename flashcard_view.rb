class FlashcardView
  attr_reader :user_answer

  def initialize
    @user_answer
    @answer

  end

  def display_welcome
    puts "Welcome to Flashcards"
    puts "You'll get a definition: try and provide a matching term"
    # puts "Type 'next' if you want to move on to the next card question"
    # puts "Type 'quit' when you want to stop playing"
    sleep(3)
  end

  def display_card_definition(card)
    puts
    puts "Here's the definition: "
    puts "#{card.definition}"
  end

  def display_game_over
    puts "Congratulations, you got 'em all!!!"
    sleep(1)
    puts "To get the full version, contact the dev team and it's yours for $39.99"
  end

  def get_user_answer
    puts
    print "Your answer: "
    @user_answer = gets.chomp
  end

  def display_incorrect_answer
    puts
    puts "Wrong answer! You can try again later"
    sleep(1)
  end

  def display_correct_answer
    puts
    puts "SUCCESS"
    sleep(1)
  end
end
