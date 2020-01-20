# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

# Define a method called hello_world that takes a string as an argument
# Use if/ then statements to check the language code
# puts "Hello, world" in the language that matches its code and test 3 times
# default should be English

def hello_world l
    if l == "es"
        puts "Hola, Mundo"
    elsif l == "de"
        puts "Hallo Welt"
    elsif l == "ja"
        puts "Kon'nichiwa sekai"
    elsif l == "ru"
        puts "Privet, mir"
    else
        puts "Hello, World"
    end
end

hello_world "es"
hello_world "ja"
hello_world "de"
hello_world "bla"



# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
# Create a method called assign_grade
# Takes an integer as an argument
# Uses if/then statement to find the corressponding grade
# puts the grade and tests 3 times

def assign_grade n
    if n>= 90
        puts "A"
    elsif n>=80
       puts "B"
    elsif n>=70
       puts "C"
    elsif n>=60
       puts "D"
    else
       puts "F"   
    end
end

assign_grade 96
assign_grade 75
assign_grade 5


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.
# Use the code above and add if statements to find numbers greater than 100 and less than 0

def assign_grade n
    if n> 100
        puts "A+++++++!!!"
    elsif n>= 90
        puts "A"
    elsif n>=80
       puts "B"
    elsif n>=70
       puts "C"
    elsif n>=60
       puts "D"
    elsif n>=0
       puts "F"  
    else 
        puts "Grade cannot be negative. Please enter another number."
    end
end

assign_grade -96
assign_grade 150
assign_grade 54


# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
# Method called pluralizer that takes 2 arguments, a string and an integer
# It should check if the number is >1 and puts the string with an s at the end if so

def pluralizer string, n
    if n == 1 
        puts "#{n} #{string}"
    elsif n > 1 || n==0
        puts "#{n} #{string}s"
    else
        puts "Please enter a number greater than 0."
    end
end

pluralizer "cat", 5
pluralizer "dog", 1
pluralizer "dog", 0
pluralizer "giraffe", -7



# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
# Add 3 exceptions to pluralizer: cactus, child, mouse

def pluralizer string, n
    if n == 1 
        puts "#{n} #{string}"
    elsif string == "cactus"
        puts  "#{n} cacti"
    elsif string == "child"
        puts  "#{n} children"
    elsif string == "mouse"
        puts  "#{n} mice"
    elsif n > 1 || n==0
        puts "#{n} #{string}s"
    else
        puts "Please enter a number greater than 0."
    end
end

pluralizer "cactus", 5
pluralizer "cactus", 1
pluralizer "child", 1
pluralizer "child", 8
pluralizer "mouse", 1
pluralizer "mouse", 3
