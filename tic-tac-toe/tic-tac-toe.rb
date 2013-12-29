#specify user input error
class UserError < StandardError; end
class PositionError < StandardError; end

#creating a 2D array that wraps
class Array2D < Array
  def []( index )
    super ( index % self.length )
  end
end

#game class
class TicTacToe
   def initialize
      @players = { player1: 'X', player2: 'O' } #players hash
      @board = {} #board hash
      1.upto(9) { |key| @board[key] = "-" } # "-" represent an empty position
   end


   #display board
   def display
      @board.each { |key,value| print "\t #{value}"; print "\n\n" if key % 3 == 0 }
   end


   #checkboard
   #win has all possible win positions
   #each win element is made an array of integers and crossed-checked with the board
   def check
      b = @board.dup
      win = [123, 456, 789, 147, 258, 369, 159, 357]
      win.each do |key|
        arr_key = key.to_s.split("").collect { |k| k.to_i }
        if arr_key.all? { |position| b[position] == 'X' }
          return 'X'
        elsif arr_key.all? { |position| b[position] == 'O' }
            return 'O'
        else

        end
      end
   end

#gameplay control
  def play
    p = Array2D.new
    @players.each { |k,v| p << k }
    display
    puts "Play"
      for i in (0..8)
        player (p[i])
        case check
          when 'X'
            puts "Player 1 has won"
            play_again
          when 'O'
            puts "Player 2 has won"
            play_again
          else
        end
        puts "Stalemate" if @board.all? {|key,value| value != "-"}
        play_again
      end

  end

  #play again
  def play_again
    retries =  3 #number of times to try to collect valid user input
    begin
      puts "Play again(y/n)"
      answer = gets.chop.downcase
      if answer =~ /^(y | n)/
        raise UserError, "Please enter only: y/n"
      end
    rescue UserError=>ue
      puts "\t #{ue}"
      if retries > 0
        retries -= 1
        retry
      else
        abort "\t Program has exited due to invalid entries"
      end
    else
        case answer
          when 'y'
            reset
          when 'n'
            puts "Good Bye"
            exit
        end
    end
  end

  #getting player input
   def player id
    retries = 3 #number of times to try to collect valid user input
    begin
      puts "Player #{id} ->"
      p1_input = gets.chop.to_i
      if p1_input < 1 or p1_input > 9
        raise UserError, "Invalid Entry! Please user entry must be between 1..9"
      end
      if @board[p1_input] != "-"
        raise PositionError, "Position Taken!"
      end
    rescue UserError, PositionError =>ue
      puts "\t #{ue}"
      if retries > 0
        puts "\t Please try again"
        retries -= 1
        retry
      else
        abort "\t Program has exited due to invalid entries "
      end
    else
      @board[p1_input] = @players[id]
    end
      display
   end

   #reset all variables
   def reset
    initialize
    play
   end

end

