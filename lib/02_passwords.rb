def sign_up
	puts "Choisis un mot de passe"
	ask_password = gets.chomp
end

def login(ask_password)
	puts "Quel est le mot de passe ?"
	password = gets.chomp

	while password != ask_password
		puts "Mauvais mot de passe, essaye encore"
		puts "Quel est ton mot de passe ?"
		password = gets.chomp
	end
	
end

def welcome_screen

	puts "-----------------------------------"
	puts "Bienvenue dans ton espace personnel"
	puts "-----------------------------------"
	puts "Tu as 3 nouveaux messages"
	puts "Message 1: Alors mec t'a réussi l'exo de la pyramide ?"
	puts "Message 2: Répond moi il est bientôt minuit je vais avoir un coeur en moins"
	puts "Message 3: Fausse alerte, mon pote Charles m'a aidé :)"
end


def perform
	ask_password = sign_up
	password = login(ask_password)
	welcome_screen

end

perform
