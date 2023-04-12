def put_line
    puts "---"
end

def done(size)
    puts "\nVoici votre half_pyramid de hauteur #{size}"
end

def half_pyramid(size)
    (size + 1).times do|x|
        if x > 0
            print " " * size + "#" * (x) + "\n"
        end
        size -= 1
    end
end

def full_pyramid(size)
    (size).times do|x|
        if x == 0
            print " " * (size - 1) + "#" * (x + 1) + " " * (size - 1) + "\n"
        end
        if x > 0
            print " " * (size - 1) + "#" * (x + 1) + "#" * (x) + " " * (size - 1) + "\n"
        end
        size -= 1
        sleep(0.1)
    end
end

def wtf_pyramid(size)
    (size - 1).times do|x|
            print " " * (x + 1) + "#" * (size - 1) + "#" * (size - 2) + " " * (x) + "\n"
        size -= 1
    end
end

def valid_size(size)
    if size < 1 || size > 25
        return 1
    end
    return 0
end

def get_size
    print "Veuillez saisir une taille comprise entre 1 et 25.\n>> "
    size = gets.chomp.to_i
    put_line
    return (size)
end

def perform
    size = get_size
    while (valid_size(size) == 1)
        puts "La taille saisie n'est pas valide."
        size = get_size
    end
    full_pyramid(size)
    wtf_pyramid(size)
    done(size)
end

perform