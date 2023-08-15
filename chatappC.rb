# gem to be used
require 'socket'

# accept input for username
print "Enter your username: "
username = gets.chomp


# connect to existing "Server"
client = TCPSocket.new('localhost', 2000)

# create dialog text?
Thread.new(client) do |client|
    loop do
        message = client.gets.chomp
        puts message
    end
end

loop do 
    print "> "
    input = gets.chomp
    
    if input != "exit"
        client.puts "#{username}: #{input}"
    else
        break
    end
end

