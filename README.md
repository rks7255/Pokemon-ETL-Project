# Pokemon-ETL-Project
Data Sources:
  Pokemon List: https://www.kaggle.com/abcsds/pokemon
  Types Table: https://github.com/veekun/pokedex/blob/master/pokedex/data/csv/types.csv
  Moves List: https://github.com/veekun/pokedex/blob/master/pokedex/data/csv/moves.csv
  Type Matrix: https://www.kaggle.com/manuelalb/pokemon-type-table/downloads/pokemon-type-table.zip/1

**Scope:Get pokemon information regarding pokemon type and moves types to be able to return the damage multiplier.

**Extract:
We were able to extract various csv's regarding pokemon and their moves. Our biggest dataset contains statistics on all pokemon from generations 1 through 7. These stats include index number, name, hp, attack, defense, sp attack and sp def, speed, genveration, and weather or not it's a legendary. The other tables include a complete list of all the moves available with their statitsics, a list of all the different element types, and a matrix that based on what element a move is vs what type a pokemon is will return the damage multiplier for that instance. For example, a fire type pokemon on the recieving end of a water type move will recieve double damage, while a fairy pokemon will recieve half damage from a steel type move.

**Transform:
The data had to be transfrormed and normalized before it could be entered into a data base. The we dropped a majority of the columns in the pokemon table as they were irrelevant to the scope. In a future iteration we could use the dropped columns to do more accurate damage instance calculations.

**Load
