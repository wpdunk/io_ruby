require 'io'

describe  do

  it "says hello to user" do
    say_hello = Io.new
    puts "enter name to test"
    name = gets.chomp
    puts "repeat name for program"
    expect { say_hello.run }.to output(
     a_string_including("hello #{name}")
   ).to_stdout
  end

  it "prompts user for their name" do
    say_hello = Io.new
    expect { say_hello.prompt }.to output(
     a_string_including("introduce yourself")
   ).to_stdout
  end

  it "takes name as input from user" do
    say_hello = Io.new
    allow(say_hello).to receive(:gets) { "william" }
    expect(say_hello.receive).to eq("william")
  end

end
