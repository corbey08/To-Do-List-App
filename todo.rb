# Todo List Application
# Simple CLI app to manage tasks

tasks = []

loop do
  puts "\n--- Todo List ---"
  puts "[1] Add Task"
  puts "[2] View Tasks"
  puts "[3] Mark Task as Done"
  puts "[4] Delete Task"
  puts "[5] Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task: "
    task = gets.chomp
    tasks << { task: task, completed: false }
    puts "Task added!"
  when 2
    puts "\nYour tasks:"
    tasks.each_with_index do |t, i|
      status = t[:completed] ? "[X]" : "[ ]"
      puts "#{i + 1}. #{status} #{t[:task]}"
    end
  when 3
    print "Enter the number of the task to mark as done: "
    num = gets.chomp.to_i
    if tasks[num - 1]
      tasks[num - 1][:completed] = true
      puts "Task marked as done!"
    else
      puts "Invalid task number."
    end
  when 4
    print "Enter the number of the task to delete: "
    num = gets.chomp.to_i
    if tasks[num - 1]
      tasks.delete_at(num - 1)
      puts "Task deleted!"
    else
      puts "Invalid task number."
    end
  when 5
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Try again."
  end
end
