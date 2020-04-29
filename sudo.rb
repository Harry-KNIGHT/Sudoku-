grille = []
position = 0
c3 = File.foreach(ARGV[0]) { |line| grille[position] = []; grille[position] = line.chomp.split(''); position += 1; }
def solver_sudoku(grille, line, column)
    for line in 0..10 # for i in 0..9
        for column in 0..10
           if (grille[line][column] == '_') #Quand '-' sera trouvé on dira qu'il doit chercher un chiffre 
             numbers = '123456789'
              for iterateur in 0..10 # <-- Traversera les lignes et colonnes 
                 numbers = numbers.gsub(grille[line][iterateur], '')
               end
                if 
                for mix in 0..10
                  numbers = numbers.gsub(grille[mix][column], '')
               end
              grille[line][column] = numbers
           end
        end 
       end
    end
   print grille 
end
  solver_sudoku(grille, 0, 0)


