require_relative '../lib/sinatra-todo.rb'
require "rspec"


RSpec.describe Task do
	before :each do
		@task = Task.new("Feed the cat")
	end

	describe "#id" do
		it "counts number of tasks created" do
			expect(@task.id).to eq(1)
		end
	end

	describe "complete?" do
		it "advises if a task is complete or not" do
			expect(@task.complete?).to eq(false)
		end
	end

	describe "complete!" do
		it "advises if a task is complete or not" do
			expect(@task.complete!).to eq(true)
		end
	end

	describe "make_incomplete" do
		it "takes a complete task and makes it incomplete(false)" do
			expect(@task.make_incomplete!).to eq(false)
		end
	end

	describe "update_content!" do
		it "when a task is updated, updated_at should be the current time" do
			expect(@task.update_content!).to eq(Time.now.strftime("%Y-%d-%m %H:%M"))
		end
	end
end

RSpec.describe Todolist do
	before :each do
    	@todo = Todolist.new("Sahu")
  	end

 	describe "add_task" do
		it "add our task to the list of tasks" do
			tasks_length = @todo.tasks.length
			@todo.add_task(Task.new("Feed the cat"))
			expect(@todo.tasks.size).to eq(tasks_length + 1)
 		end
 		it "add our task to the list of tasks" do
 			task = Task.new("Feed the cat")
			@todo.add_task(task)
			expect(@todo.tasks).to include(task)
 		end
 	end
	
	describe "delete_task" do
		it "delete task by its ID" do
			task = Task.new("Feed the cat")
			@todo.add_task(task)
			expect(@todo.delete_task(1).size).to eq(1)
 		end
 		it "delete task by its ID" do
			task = Task.new("Wash the car")
			@todo.delete_task(task.id)
			expect(@todo.tasks.include?(task)).to eq(false)
 		end
 	end
end