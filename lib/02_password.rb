def check_pass(pass, verif)
    if pass != verif
        return 1
    end
    return 0
end

def certif_pass
    print "veuillez saisir votre de mot de passe pour acceder à votre message.\n>> password:"
    verif = gets.chomp
    return (verif)
end

def pass_error
    puts "ERREUR : le mot de passe ne correspond pas."
end

def interface_valide
    66.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
    21.times do
        print "▇"
        sleep(0.01)
    end
    print " Connexion en cours ... "
    21.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
    66.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
end

def interface
    66.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
    20.times do
        print "▇"
        sleep(0.01)
    end
    print " Mot de passe enregistré! "
    20.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
    66.times do
        print "▇"
        sleep(0.01)
    end
    print "\n"
end

def ask_pass
    print "Bonjour, merci d'enregistrer un nouveau mot de passe.\n>> nouveau password: "
    pass = gets.chomp
    return(pass)
end

def perform
    pass = ask_pass
    interface
    verif = certif_pass
    while check_pass(pass, verif) == 1
        pass_error
        verif = certif_pass
    end
    interface_valide
end

perform