require './lib/task'
require './lib/list'

@list_of_lists = []

def main_menu
  puts 'Type nl to create a New List, select to choose a list to edit or x to exit'
  main_choice = gets.chomp

  case main_choice
  when 'nl'
  puts "Enter the name of the new list"
  input = gets.chomp
  @list_of_lists << List.new(input)
  main_menu
  when'select'
  puts "Type the number of the list you want to edit"
    @list_of_lists.each_with_index do |list,index|
      index += 1
      puts index.to_s + ". " + list.name
    end
  selected_list_index = gets.chomp
  selected_list = @list_of_lists[selected_list_index.to_i-1]
  puts "What do you want to do #{selected_list.name}"
  puts 'a for add a task,r for remove task, e to edit a task inside a list,l l for list tasks, s to sort tasks or delete  the entire list with d'
  input = gets.chomp

  case input
  when 'a'
    puts "type the name of the task to add to #{selected_list.name}"
    description = gets.chomp
    puts 'enter its priortity 1-5'
    userpriority = gets.chomp
    puts 'enter its due date'
    due_date = gets.chomp
    selected_list.add_task(description, userpriority, due_date)
    puts "ok #{description} added to #{selected_list.name}"
    puts "here are your current tasks for #{selected_list.name} "
    selected_list.list.each do |list|
      puts list.description
    end
    main_menu
  when 's'
    puts "how do you want to sort your list? (due date ('dd'), priority('p') or description('d'))"
    input = gets.chomp
    case input
    when 'dd'
      selected_list.sort_tasks_by_due_date
      main_menu
    when 'p'
      selected_list.sort_tasks_by_priority
      main_menu
    when 'd'
      selected_list.sort_tasks_by_description
      main_menu
    end

  when 'l'
    puts "here are all the tasks for the list #{selected_list.name}:"
    selected_list.sort_tasks_by_description

  when 'e'
    puts "which task would you like to edit?"
    selected_list.list.each_with_index do |task,index|
     index += 1
     puts index.to_s + ". " + task.description
    end
    selected_task = gets.chomp
    puts "what is the new description?"
    input = gets.chomp
    selected_list.list[selected_task.to_i-1].new_task_description(input)
    puts "the new list is:"
      selected_list.sort_tasks_by_description
    main_menu

  when 'r'
    puts "What task do you want to remove from #{selected_list.name}:"
      selected_list.list.each_with_index do |task,index|
       index += 1
       puts index.to_s + ". " + task.description
      end
    input = gets.chomp
    selected_list.list.delete_at(input.to_i-1)
    main_menu
  end
when 'x'
  puts 'Goodbye!'
else
  puts 'sorry not a valid option'
  main_menu
  end
end

main_menu
