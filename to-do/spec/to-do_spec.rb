require 'rspec'
require 'task'
require 'list'
require './interface'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('scrub the zebra')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read the desctiptyion out' do
    test_task = Task.new('scrub the zebra')
    test_task.description.should eq 'scrub the zebra'
  end

describe 'remove_task' do
  it 'lets you remove items from your to-do list' do
    test_task = Task.new('eat the potato')
    test_task1 = Task.new('slice the banana')
    @list = [test_task, test_task1]
    remove_task(1)
    @list.should == [test_task1]
  end
 end
end

describe List do
  it 'should have a list of tasks and the ability to add to them' do
    test_list = List.new('things for tomorrrow ')
    test_list.should be_an_instance_of List
  end
  describe 'add_task' do
    it 'lets you add tasks to the list' do
    test_list = List.new('things for today')
    test_list.add_task('scrub the donkey')
    test_list.list.should eq ['scrub the donkey']

    end
  end
end
