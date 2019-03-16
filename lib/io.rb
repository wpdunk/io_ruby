class Io
  def prompt
    puts "introduce yourself"
  end
  def receive
    username = gets.chomp
  end
  def run
    prompt
    puts "hello #{receive}"
  end
end
