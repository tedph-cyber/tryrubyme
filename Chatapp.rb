class ChatApp
    def initialize
        @texts =[]
    end
    
    def start
        puts "Welcome to the Chat App"
        puts "Type exit to quit"

        loop do
            print ">"
            input = gets.chomp


            break if input == "exit"
            send_text(input)
            # display_texts
        end


        puts "Goodbye! Thanks for chatting"
    end


    private


    def send_text(text)
        @texts << text
    end

    def display_texts
        puts "Chat History"
        @texts.each { |text| puts "- #{text}"}
        puts "-------------------------------"
    end
end

chat_app = ChatApp.new
chat_app.start
