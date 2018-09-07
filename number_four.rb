require 'numbers_in_words'

def user_input
  puts "----please input a number----"
  @number = gets.strip.to_i
  number_four
end

def number_four
  length = NumbersInWords.in_words(@number).gsub(' ', '').length 
  puts "#{@number} is #{length}"
  @number = length 
  if @number == 4
    puts "----Annnndddd 4 is the magic number!----"
  else
    number_four 
  end
end 
user_input 