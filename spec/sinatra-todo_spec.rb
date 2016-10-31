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
end