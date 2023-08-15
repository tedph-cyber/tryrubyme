require 'socket'

server = TCPServer.new(2000)

puts "Server started. Waiting for connections..."

# loop to 
loop do 
    client = server.accept

    Thread.new(client) do |client|
        puts "New client conected: #{client}"

        loop do 
            message = client.gets.chomp

            puts "Receieved massage: #{message}"

            # break if input == "exit"
        end
    end
end
