require './lib/task'
require './lib/list'

@list_of_lists = []

def main_menu
  puts 'Type nl to create a New List'
  puts 'Type select to choose a list to edit'
  puts 'press x to exit'

  main_choice = gets.chomp

if main_choice == 'nl'
  puts "Enter the name of the new list"
  input = gets.chomp
  @list_of_lists << List.new(input)
  main_menu
elsif main_choice == 'select'
  puts "Type the number of the list you want to edit"
    @list_of_lists.each_with_index do |list,index|
      index += 1
      puts index.to_s + ". " + list.name
    end
  selected_list = gets.chomp
  puts "What do you want to do #{@list_of_lists[selected_list.to_i-1].name}"
  puts 'a for add a task,r for remove task, l for list tasks or delete  the entire list with d'
  input = gets.chomp

  if input == 'a'
    puts "type the name of the task to add to #{@list_of_lists[selected_list.to_i-1].name}"
    description = gets.chomp
    @list_of_lists[selected_list.to_i-1].add_task(description)
    puts "ok #{description} added to #{@list_of_lists[selected_list.to_i-1].name}"
    puts "here are your current tasks for #{@list_of_lists[selected_list.to_i-1].name} "
      @list_of_lists[selected_list.to_i-1].list.each do |list|
       puts list.description
      end
    main_menu
  elsif input == 'r'
    puts "What task do you want to remove from #{@list_of_lists[selected_list.to_i-1].name}:"
      @list_of_lists[selected_list.to_i-1].list.each_with_index do |task,index|
       index += 1
       puts index.to_s + ". " + task.description
      end
    input = gets.chomp
    remove_task(input, @list_of_lists[selected_list.to_i-1])
    puts "Here is your updated list:"
      @list_of_lists[selected_list.to_i-1].list.each_with_index do |task,index|
       index += 1
        puts index.to_s +". " + task.description
      end
    main_menu
  end
elsif main_choice == 'x'
  puts 'Goodbye!'
else
  puts 'sorry not a valid option'
  main_menu
  end
end

def add_task
  puts "Enter the description of the new task"
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts 'Task added!'
  puts "\n\n"
  main_menu
end

def list_tasks
  puts "here are all of your tasks"
    @list.each_with_index do |task,index|
    index+=1
    puts index.to_s + ". " + task.description
    end
  puts "\n\n"
  main_menu
end


def remove_list(list_number)
  @list_of_lists.delete_at(list_number-1)
  main_menu
end

def remove_task(task_number, current_list)
 current_list.list.delete_at(task_number.to_i-1)
end




main_menu
