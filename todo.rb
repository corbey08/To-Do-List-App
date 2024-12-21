tasks = []

loop do
  puts "Choose an option: [1] Add Task [2] View Tasks [3] Mark Task as Done [4] Exit"
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task: "
    task = gets.chomp
    tasks << { task: task, completed: false }
    puts "Task added!"
  when 2
    puts "Your tasks:"
    tasks.each_with_index do |t, i|
      status = t[:completed] ? "[X]" : "[ ]"
      puts "#{i + 1}. #{status} #{t[:task]}"
    end
  when 3
    puts "Enter the number of the task to mark as done:"
    num = gets.chomp.to_i
    if tasks[num - 1]
      tasks[num - 1][:completed] = true
      puts "Task marked as done!"
    else
      puts "Invalid task number."
    end
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Try again."
  end
end