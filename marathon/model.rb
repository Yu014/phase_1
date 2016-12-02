require 'csv'

class Card
  attr_accessor :guessed
  attr_reader :question, :answer

  def initialize(question, answer, guessed=false)
    @question = question
    @answer = answer
    @guessed = guessed
  end
end

class Csv
  def literature_cards
    deck = []
    cards = [["Autor de 'Lolita'", "Nabokov"],
    ["El libro más popular de José Emilio Pacheco", "Las batallas en el desierto"],
    ["¿Quién es el llamado 'Gran Cronopio'?", "Cortázar"],
    ["Principal exponente del realismo mágico en América Latina", "Garcia Márquez"],
    ["Nacionalidad de Carlos Fuentes", "Mexicana"],
    ["¿En qué año se publicó 'Las flores del mal' de Baudelaire?", "1857"],
    ["Categoría a la que pertenecieron autores como Mallarmé, Rimbaud y Verlaine.", "Poetas malditos"],
    ["Género de los relatos del autor H.P. Lovecraft.", "Terror"],
    ["Autor latinoamericano al que le fue otrogado un premio nobel de literatura en 2010", "Vargas Llosa"],
    ["Escritor que define el concepto de 'lo real maravilloso'.", "Carpentier"],
    ["Escritora de 'La semana de colores'", "Garro"],
    ["¿Cuál es el nombre de la poeta chilena más conocida en el mundo?", "Mistral"],
    ["¿Quién escribió 'El laberinto de la soledad'?", "Paz"],
    ["El real viceralismo es parte del argumento de la novela:", "Los detectives salvajes"],
    ["En México a los escritores de corriente literaria más fuerte del siglo XX se dice que pertenecieron a la:", "Generación del medio siglo"]]
    cards.each do |x, y|
      deck << Card.new(x, y)
    end
    deck
  end
  def initialize
    @file = "literature.csv"
    @cards = literature_cards
    writer
  end
  def writer
    CSV.open(@file, "wb") do |csv|
      @cards.each do |card|
      csv << [card.question, card.answer, card.guessed]
      end
    end
  end
  def reader
    info_array = []
    CSV.foreach(@file) do |row|
      info_array << row
    end
    info_array
  end
  def questions
    questions = []
    reader.each do |x, y, z|
      questions << x
    end
    questions
  end

  def answers
    answers = []
    reader.each do |x, y, z|
      answers << y
    end
    answers
  end

  def guess
    guessed = []
    reader.each do |x, y, z|
      guessed << z
    end
    guessed
  end
end


