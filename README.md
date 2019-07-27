# Pokemon-ETL-Project
Data Sources:

**Pokemon List: https://www.kaggle.com/abcsds/pokemon

**Types Table: https://github.com/veekun/pokedex/blob/master/pokedex/data/csv/types.csv

**Moves List: https://github.com/veekun/pokedex/blob/master/pokedex/data/csv/moves.csv

**Scope: Get pokemon information regarding the pokemon, pokemon type and moves types.

**Extract: We were able to extract various CSV's regarding pokemon and their moves. Our biggest dataset contains statistics on all pokemon from generations 1 through 7. These stats include index number, name, hp, attack, defense, sp attack and sp def, speed, generation, and whether or not it's legendary. The other tables include a complete list of all the moves available with their statistics, a list of all the different element types, and a matrix that based on what element a move is vs what type a Pokemon is will return the damage multiplier for that instance. For example, a fire type pokemon on the receiving end of a water type move will receive double damage, while a fairy pokemon will receive half damage from a steel type move.

**Transform: The data had to be transformed and normalized before it could be entered into a database. We dropped a majority of the columns in the pokemon table as they were irrelevant to the scope. In a future iteration, we could use the dropped columns to do more accurate damage instance calculations.

**Load We loaded the data into Postgres using a connection from our python script. We made sure to map out the primary keys and foreign keys in our queries.
