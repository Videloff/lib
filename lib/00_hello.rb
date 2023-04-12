def say_hello(first_name, last_name)
    puts "Bonjour " + first_name.to_s + " " + last_name.to_s + " !"
end

def ask_last_name
    puts "Quel est ton nom ?"
    print ">> "
    last_name = gets.chomp
    return (last_name)
end

def ask_first_name
    puts "Quel est ton prénom ?"
    print ">> "
    first_name = gets.chomp
    return (first_name)
end

def ft_bar
    puts "----"
end

def perform
    first_name = ask_first_name
    ft_bar
    last_name = ask_last_name
    ft_bar
    say_hello(first_name, last_name)
end

perform