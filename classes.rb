class Vorlesung
  def initialize(abk, name, dozent, klasse)
    @vorlesung = {abk => [name, dozent, klasse]}
  end
  
  def show 
    @vorlesung.each do |key, value| puts "#{key}: Name= #{value[0]}, Dozent= #{value[1]}, Klasse= #{value[2]}" end
  end
   
  def existiert?(abk)
    @vorlesung.has_key(abk)
  end
    
    
end

class Vorlesungen < Vorlesung
  def initialize(semester, vorlesungen)
    @vorlesungen = {semester => vorlesungen}
  end
  
  def imSemester(sem)
    @vorlesungen[sem].each do |x| x.show end
  end
  
  
  
end


def semester18
  vorlesung1 = Vorlesung.new("WOR", "Wissensorganisation und -repräsentition", "Semar", "IW18")
  vorlesung2 = Vorlesung.new("BAIN", "Bibliotheks- und Archivinformatik", "Franz", "IW17")
  vorlesungen = Vorlesungen.new("HS18", [vorlesung1, vorlesung2])
  
end

puts semester18


