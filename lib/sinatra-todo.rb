
class Task
    attr_reader :content, :id
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @incomplete = false
        @complete = true 
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