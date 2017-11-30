require_relative 'abfragen_checkliste'
require_relative 'classes'
require_relative 'vermittlung'

puts "Gesamtprozess Videoaufzeichnung"
puts

def start
puts "Welcher Prozess?"
puts
print "- Neue Module planen (1) \n- Administration (2) \n- Aufzeichnung/Videobetreuung (3) \n- Vermittlung/Archivierung (4)\n"
print ":"
auswahl = gets.chomp


case auswahl

  when "1"
    puts
    puts "Prorektor, Studienleiter"
    
  when "2"
    puts
      puts "Administration"
      
  when "3"
    puts
        puts "Aufzeichnung"
        abfragen_checkliste
        
  when "4"
    puts
    vermittlung
        
  else
    puts
    puts "Gibt es nicht"
    start
end
end

start

=begin
Prozess Administration 
Oberster Verantwortlicher für die Lehre ist der Prorektor der HTW (Martin Studer)

Das Konzept für die Videoübertragung wurde vom SII entwickelt, neu ist aber das BLC für alle damit verbundenen Aspekte verantwortlich. Das SII ist aber weiterhin für die technischen Aspekte zuständig (z.B hosting).

Die Studienleiter bestimmen, welche Kurse aufgezeichnet werden (BSc Bekavac, MSc Semar)

Die Administration wird von den wissenschaftlichen Mitarbeitern des SII ausgeführt, dies umfasst: 
Rekrutierung und Ausbildung von Betreuer
Einsatzplan (google Tabelle)
Erstellung und Verwaltung der moodle-Seite (Links auf Aufzeichnung des jew. Moduls, Link auf Einträge) 
Einsatzbereitschaft der Geräte
Unterstützung der Betreuer (Chat in Telegram)
=end


