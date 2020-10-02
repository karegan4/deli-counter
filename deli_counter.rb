require 'pry'

def line (people_in_line)

    if people_in_line.length == 0
        puts "The line is currently empty."
    else
        #somehow get numbers in front of the people's name that correspond with their place in line 
        #Find some way to iterate and keep track of the amount of time we've iterated, and use that as the number to determine the person's position 
        #somehow combine the name and the numbers intro one big string, that also has something like "The line is: "
        intro = "The line is currently:"
        people_in_line.each_with_index do |person, index| 
            intro << " #{index + 1}. #{person}"
        end
  
        #inside of the pipes, put the singular version of what you're iterating over
        # intro << people_in_line.map.with_index{|person, index| "#{index + 1}. #{person}" }.join(" ")
        puts intro
    end
end

def take_a_number (people_in_line, new_person_name)
people_in_line << new_person_name
count = people_in_line.count
puts "Welcome, #{new_person_name}. You are number #{count} in line."



    
end

def now_serving (people_in_line)
    if people_in_line.any?
        first = people_in_line[0]
        puts "Currently serving #{first}."
        people_in_line = people_in_line.shift
    else
        puts "There is nobody waiting to be served!"
    end
end
