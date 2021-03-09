class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over

    end
  end

  def take_turn
    show_sequence
    i=0
    p "please enter the sequence"
    until i == @sequence_length
      user_seq = require_sequence
      if @seq[i] == user_seq
        round_success_message
      else
        game_over_message
        return false
      end
      i += 1
    end
    @sequence_length += 1
  end

  def show_sequence
    @seq.each do |color| 
      p color
      sleep(1)
    end
  end

  def require_sequence
    gets.chomp
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "success!"
  end

  def game_over_message
    p "sorry you lost!"
  end

  def reset_game

  end
end
