require 'csv'

class Card
  attr_accessor :question, :answer, :guessed
  def initialize(question, answer, guessed?=false)
    @question = question
    @answer = answer
    @guessed = guessed
  end
end

class Csv
  def reader
  end
  def writer
  end
end

(("¿Autor de 'Lolita'?", "Nabokov"),
("El libro más popular de José Emilio Pacheco", "Las batallas en el desierto"),
("¿Quién es el llamado 'Gran Cronopio'?", "Cortázar"),
("Principal exponente del realismo mágico en América Latina", "Garcia Márquez"),
("Nacionalidad de Carlos Fuentes", "mexicana"),
("¿En qué año se publicó 'Las flores del mal' de Baudelaire?", "1857"),
("Categoría a la que pertenecieron autores como Mallarmé, Rimbaud y Verlaine.", "Poetas malditos"),
("Género de los relatos del autor H.P. Lovecraft.", "terror"),
("Autor latinoamericano al que le fue otrogado un premio nobel de literatura en 2010", "Vargas Llosa"),
("Escritor que define el concepto de 'lo real maravilloso'.", "Carpentier"),
("¿Escritora de 'La semana de colores'?", "Garro"),
("¿Cuál es el nombre de la poeta chilena más conocida en el mundo?", "Mistral"),
("¿Quién escribió 'El laberinto de la soledad'?", "Paz"),
("El real viceralismo es parte del argumento de la novela:", "Los detectives salvajes"),
("En México la corriente literaria más fuerte del siglo XX se llamó:", "Generación del Medio Siglo"))


