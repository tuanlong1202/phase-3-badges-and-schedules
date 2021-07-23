# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    retMessages = []
    names.each do |name|
        retMessages.push(badge_maker(name))
    end
    retMessages
end

def assign_rooms(names)
    retMessages = []
    names.each_with_index do |name,index|
        retMessages.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
    end
    retMessages
end

def printer(names)
    batch_badge_creator(names).each do |message|
        puts "#{message}"
    end
    assign_rooms(names).each do |message|
        puts "#{message}"
    end
end