
table = []
table << Hash["Nombre", "Rodrigo García", "Edad", 13, "Genero", "Masculino", "Grupo", "Primero", "Calificaciones", [9, 9, 7, 6, 8]]
table << Hash["Nombre", "Fernanda Gonzalez", "Edad", 12, "Genero", "Femenino", "Grupo", "Tercero", "Calificaciones", [6, 9, 8, 6, 8]]
table << Hash["Nombre", "Luis Perez", "Edad", 13, "Genero", "Masculino", "Grupo", "Primero", "Calificaciones", [8, 7, 7, 9, 8]]
table << Hash["Nombre", "Ana Espinosa", "Edad", 14, "Genero", "Femenino", "Grupo", "Segundo", "Calificaciones", [9, 9, 6, 8, 8]]
table << Hash["Nombre", "Pablo Moran", "Edad", 11, "Genero", "Masculino", "Grupo", "Segundo", "Calificaciones", [7, 8, 9, 9, 8]]

#Driver code
p table[0]["Grupo"] == "Primero"
p table[1]["Nombre"] == "Fernanda Gonzalez"
p table[2]["Edad"] == 13
p table[3]["Genero"] == "Femenino"
p table[4]["Calificaciones"][2] == 9
