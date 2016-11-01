require 'pry'

class Task
  attr_reader :content, :id, :created_at, :updated_at
  @@current_id = 1

  def initialize(content, updated_at = nil)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @incomplete = false
    @complete = true
    @created_at  = Time.now
    @updated_at = updated_at
  end

  def complete?
  	@incomplete
  end

  def complete!
   	@complete
  end

  def make_incomplete!
   	@incomplete
  end

  def update_content!
   	@updated_at = Time.now.strftime("%Y-%d-%m %H:%M")
  end
end

class Todolist
  attr_reader :tasks, :user, :id
  def initialize(user)
    @user = user
    @tasks = []
  end

  def add_task(task)
    @tasks.push(task)
  end

  def delete_task(id)
    @tasks.delete_if {|task| task.id == id }
  end

  def find_task_by_id(id)
    @tasks.find {|task| task.id == id}
  end

end

# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2

# task = Task.new("Buy the milk")
# task.complete?
# # false

# task = Task.new("Buy the dog")
# puts task.content 
# # Buy the dog

# task2 = Task.new("Walk the milk")
# puts task2.content 
# # Walk the milk
# task.update_content!("Buy the milk")
# task2.update_content!("Walk the dog")
# puts task.content 
# # Buy the milk
# puts task2.content 
# # Walk the dog


# todo = Todolist.new("Sahu")
# todo.add_task(task)
 
# todo_list = Todolist.new("Sahu")
# todo_list.add_task(Task.new("Walk the dog"))
# todo_list.add_task(Task.new("Buy the milk"))
# task = todo_list.find_task_by_id(2)
# puts task.content