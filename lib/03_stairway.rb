def start_game
   puts "Bienvenue dans le Stair Game"
   puts "----------------------------"
   puts "But du jeu : Tu dois monter un escalier à 10 marches"
   puts "Lance le dé et laisse tourner ta chance"
end

def dice_throw

   i = 0
   turn = 0

   while i != 10
   throw = rand(1..6)
   puts "--"
   puts "Tu as lancé un #{throw}"
   turn += 1

   if
       i == 0 && throw == 1
       puts "Tu es déja en bas de l'escalier"

   elsif
       throw == 1
       i -= 1
       puts "Oups, tu descends d'une case. Tu es actuellement sur la marche #{i}"
   elsif
       throw == 2 || throw == 3 || throw == 4
       puts "Ton lancé est nul. Tu es toujours sur la marche #{i}"
   else
       throw == 5 || throw == 6
       i += 1
       puts "Tu avances d'une marche. Tu es actuellement sur la marche #{i}"
   end
end
       puts "------------------------------------------------------------"
       puts "Bravo, tu peux reposer ton poignet, tu viens de finir le jeu"
       puts "Tu viens d'entrer dans le Hall of fame"

       return(turn)

end

def perform
   start_game
   dice_throw
end

perform


def average_finish_time

   games_played = 0
   rounds = 0

   while games_played <= 100
       turn = dice_throw
       rounds = turn
       games_played += 1
   end

   rounds / 100
   puts "Nos meilleurs joueurs mettent #{rounds} tours en moyenne pour arriver à la 10è marche"
end

average_finish_time