# class for the app
class TodoList 
    def initialize
        @tasks = []
    end

    # function to add tasks
    def add_task(task)
        @tasks << task
        puts "Task added:#{task}"
    end

    # function to delete tasks 
    def delete_task(index)
        if index >= 0 && index < @tasks.length
            deleted_task = @tasks.delete_at(index)
            puts "Task deleted:#{deleted_task}"
        else 
            puts "Invalid task index"
        end
    end

    # function to display tasks
    def display_tasks
        if @tasks.empty?
            puts "No tasks found"
        else
            puts "Tasks:"
            @tasks.each_with_index do |task, index|
                puts "#{index + 1}. #{task}"
            end
        end
    end
end


# initialize new list for opening interface
todo_list = TodoList.new

# commands would be shown while true
while true
    puts "Enter a command (add, delete, list) or 'exit' to quit."
    # to convert to lowercase to effectively work
    command = gets.chomp.downcase

    # the "cases" switches
    case command
    when "add"
        puts "Enter a task:"
        task = gets.chomp
        todo_list.add_task(task)
    when "delete"
        puts "Enter the index of the task to delete:"
        index =  gets.chomp.to_i - 1
        todo_list.delete_task(index)
    when "list"
        todo_list.display_tasks
    when "exit"
        break
    else
        puts "Invalid command"
    end
end       