class Vorlesung
  def initialize(abk, name, dozent, klasse)
    @vorlesung = {abk => [name, dozent, klasse]}
  end
  attr_reader :vorlesung
  def show 
    @vorlesung.each do |key, value| puts "#{key}: Name= #{value[0]}, Dozent= #{value[1]}, Klasse= #{value[2]}" end
  end
   
  def existiert?(abk)
    @vorlesung.has_key(abk)
  end
    
    
end

class Vorlesungen < Vorlesung
  def initialize(semester, vorlesungen)
    @vorlesungen =   vorlesungen
    @semester = semester
  end
  
  attr_reader :semester
  
  def vorlesungImSemester?(abk)
    
    abfrage = @vorlesungen.each do |x| x.vorlesung.key?(abk) end
    puts abfrage.any?
  
  end
 
  def vorlesungen
    @vorlesungen.each do |x| x.show end
  end
 
  def gibtEs?(abk)
  
   arr =@vorlesungen.map do |x| x.vorlesung.key?(abk) end
   if arr.any?
     puts "Im Semester #{self.semester} gibt es die Vorlesung #{abk}"
     true
   else
     puts "Diese Vorlesung gibt es nicht"
     false
   end
  end
  
end

def semester18
  vorlesungen = [vorlesung1 = Vorlesung.new("WOR", "Wissensorganisation und -repräsentition", "Semar", "IW18"),
  vorlesung2 = Vorlesung.new("BAIN", "Bibliotheks- und Archivinformatik", "Franz", "IW17"),
  vorlesung3 = Vorlesung.new("SEM", "Seminar", "Stettler", "IW15")]
  vorlesungen18 = Vorlesungen.new("HS18", vorlesungen)
end



#semester18.vorlesungen
 #semester18.gibtEs?("BAIN")


