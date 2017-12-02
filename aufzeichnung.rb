require_relative 'classes'


def abfrage(text)
  print text
  gets 
end

def fragen
puts "Öffne Videoübertragungsplan"
puts 
print "Welche Vorlesung:"
vorlesung = gets.chomp
vorlesung.upcase!
fragen unless semester18.gibtEs?(vorlesung) 
puts
print "Im welchem Raum: "
raum = gets.chomp 
print "Klasse: "
klasse = gets.chomp
puts
puts "Die Vorlesung #{vorlesung} ist im Raum #{raum}. (Klasse: #{klasse}) " 
sleep(1)
abfrage "Richtiger Unterrichtsraum?"
puts
puts "Öffne Moodle. Wähle den Kurs VIDEO #{klasse}"
puts 
puts "Wähle den Link der entsprechenden Vorlesung: #{vorlesung}"
puts 


end



def checkliste
puts "Checkliste:"
abfrage "Lautsprecher-Knopf aus (grau) :"
abfrage "Mikroknopf an? (Grün) :"
abfrage "Kameraknopf an? (Grün) :"
abfrage "(Web-)cam freigegeben? (Freigabe) :"
abfrage "Kamerabild sauber? (Ext Display auf Fernbedienung) :"
abfrage "Bildschirmfreigabe beim Dozentenlaptop aktiviert? :"
abfrage "Connect Aufzeichnung läuft? (Roter Punkt) :"
puts "-> Aufzeichnung starten: Meeting -> Aufzeichnung starten :"
print "Checkliste wiederholen? Ja | Nein :"
check=gets.chomp
check.downcase!
checkliste  if check=="ja" 
end





