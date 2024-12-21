tasks = []

loop do
  puts "Choose an option: [1] Add Task [2] View Tasks [3] Exit"
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task: "
    task = gets.chomp
    tasks << task
    puts "Task added!"
  when 2
    puts "Your tasks:"
    tasks.each_with_index { |t, i| puts "#{i + 1}. #{t}" }
  when 3
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Try again."
  end
end