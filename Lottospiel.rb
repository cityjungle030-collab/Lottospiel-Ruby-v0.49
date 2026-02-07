require 'colorize'
require 'colorized_string'
	
	
class Lottospiel
  
	# Initializierungs Procedur
	# Muss alle klassenspezifischen Variablen enthalten
	# bekommt anscheinend keine Parameter!
	def new() 
		
		$lottoscheinraw = Array.new(50, Integer)
		puts ("Das Lottofeld wurde angelegt. Ein Array mit 50 Feldern")

		# SUPERZAHL
		$lottoscheinraw[0] = 0

		lotto_index = 1
		
		49.times do 
			$lottoscheinraw[lotto_index] = lotto_index 
			lotto_index = lotto_index +1
		end
	end
	
	
	# Mit RETURN WERT ALS ARRAY
	def new() :Array
		
		lottoscheinraw = Array.new(50, Integer)
		puts ("Das Lottofeld wurde angelegt mit new(). Ein Array mit 50 Feldern")

		# SUPERZAHL
		lottoscheinraw[0] = 0

		lotto_index = 1
		
		49.times do 
			lottoscheinraw[lotto_index] = lotto_index 
			lotto_index = lotto_index +1
			end
		return lottoscheinraw
	end
	



  def ausgabe7 (zahlenziehung)
	      				# Ausgabe (MUSS DIESE HIER SEIN??)
		        print "\t" + (zahlenziehung[1].to_s).black.on_white 
		        print "\t" + (zahlenziehung[2].to_s).black.on_white
		        print "\t" + (zahlenziehung[3].to_s).black.on_white
		        print "\t" + (zahlenziehung[4].to_s).black.on_white
		        print "\t" + (zahlenziehung[5].to_s).black.on_white
		        print "\t" + (zahlenziehung[6].to_s).black.on_white
		        print "\t" + (zahlenziehung[0].to_s) + " ist Superzahl\n"
	end


	def superzahl (feld):Integer 
        var_superzahl = feld[0].to_i
        return var_superzahl
  end
  
  def zahlenEingeben ():array
	    auswahlpunkt = -1
	    while (auswahlpunkt == -1) do
		      puts "Möchten Sie die Lottozeilen einzel eingeben?"
          puts "oder als Liste (sechs aus neundvierzig, plus Superzahl)"
          print "[E] = einzeln"
          print "\t" + "[L] = Liste"
          puts()
          #print "'e' oder 'l' "
          eingabeChar = gets.chomp()
          eingabeChar = eingabeChar.upcase
               while((eingabeChar != 'E') and (eingabeChar != 'L'))
                  puts ("Die Eingabe war nicht korrekt, versuchen Sie es erneut!").red
                  eingabeChar = gets.chomp()
                  eingabeChar = eingabeChar.upcase
               end
               auswahlpunkt = 1
               puts(eingabeChar)
               case eingabeChar
	             when "E"
	                    begin
	          	 	      tip1 = -1
			                while (tip1 < 1) or (tip1 > 49) do 
				              puts ("Geben Sie Tip N°1 ein: ")
				              tip1 = gets.to_i()
			                end 			

			                tip2 = -1
			                while (tip2 < 1) or (tip2 > 49) or (tip2 == tip1) do 
				              puts ("Geben Sie Tip N°2 ein: ")
				              tip2 = gets.to_i()
			                end 

			                tip3 = -1
			                while (tip3 < 1) or (tip3 > 49) or (tip3 == tip2) or (tip3 == tip1) do 
				              puts ("Geben Sie Tip N°3 ein: ")
				              tip3 = gets.to_i()
			                end 

			                tip4 = -1
			                while (tip4 < 1) or (tip4 > 49) or (tip4 == tip3) or (tip4 == tip2) or (tip4 == tip1) do 
				              puts ("Geben Sie Tip N°4 ein: ")
				              tip4 = gets.to_i()
			                end 

			                tip5 = -1
			                while (tip5 < 1) or (tip5 > 49) or (tip5 == tip4) or (tip5 == tip3) or (tip5 == tip2) or (tip5 == tip1) do 
				              puts ("Geben Sie Tip N°5 ein: ")
				              tip5 = gets.to_i()
			                end 

			                tip6 = -1
			                while (tip6 < 1) or (tip6 > 49) or (tip6 == tip5) or (tip6 == tip4) or (tip6 == tip3) or (tip6 == tip2) or (tip6 == tip1) do 
				              puts ("Geben Sie Tip N°6 ein: ")
				              tip6 = gets.to_i()
			                end 

					            tip_Superzahl = -1
					            while tip_Superzahl < 0 or tip_Superzahl > 9 do  
					            puts ("Geben Sie Ihre Superzahl (zwischen 1 und 9) ein: ")
					            tip_Superzahl = gets.to_i()
					            end 

					            puts()
					            puts()
	                    end #case e
	                    	        
	             when 'L'
	                    begin
	        	          # Strip Variante
		              
		                  # strip-Part
		                  # is_To_Do
		      
		                end             
               
               end #case
      end #while

					array = Array.new(7, Integer)

					array[0] = 0
					array[1] = tip1.to_i
					array[2] = tip2.to_i
					array[3] = tip3.to_i
					array[4] = tip4.to_i
					array[5] = tip5.to_i
					array[6] = tip6.to_i

					array = array.sort!
					sleep(0.85)

					array[0] = tip_Superzahl.to_i
					#if (zahlenziehung [1] == zahlenziehung[2]) or (zahlenziehung[1]
			    return array
	end #zahleneingeben

	def zufallsziehung(sz) :Array
	    korrekt = false
	    tip_Los = Array.new(7, Integer)
	    
	    while !korrekt do
	      tip_Los[0] = sz
			  tip_Los[1] = rand(1..49)
			  tip_Los[2] = rand(1..49)
			  tip_Los[3] = rand(1..49)
			  tip_Los[4] = rand(1..49)
			  tip_Los[5] = rand(1..49)
			  tip_Los[6] = rand(1..49)
			  tip_Los.sort!
			  tip_Los[0] = sz
		  
	      if (tip_Los[1] == tip_Los[2]) or (tip_Los[1] == tip_Los[3]) or (tip_Los[1] == tip_Los[4]) or (tip_Los[1] == tip_Los[5]) or (tip_Los[1] == tip_Los[6]) or (tip_Los[2] == tip_Los[3]) or (tip_Los[2] == tip_Los[4]) or (tip_Los[2] == tip_Los[5]) or (tip_Los[2] == tip_Los[6]) or (tip_Los[3] == tip_Los[4]) or (tip_Los[3] == tip_Los[5]) or (tip_Los[3] == tip_Los[6]) or (tip_Los[4] == tip_Los[5]) or (tip_Los[5] == tip_Los[6])
          
         # tip_Los[0] = 0
		     # tip_Los[1] = -1
		     # tip_Los[2] = -1
		     # tip_Los[3] = -1
		     # tip_Los[4] = -1
		     # tip_Los[5] = -1
		     # tip_Los[6] = -1
		    zufall = false
		    else korrekt = true
		    #else puts(">>INTERNER FEHLER mit der Datebverarbeitung").black.on_red_red
		    end #if
	
		puts "\n"
		end #while
		#unnötig: zufall = true
		return tip_Los
		end #zufallsziehung
		
		
	  # zeigt die Schnittmengen farbig ausgerwertet an
	  def join(zufallsziehung, tip)
		    index1 = 1
		    index2 = 1
		    
		    # war zwischen-check-Ausgabe:
		    #print("Die Länge ist: " + zufallsziehung.length.to_s + "\n\n")
		    
	      # ausgabe_tip(zufallsziehung)
		    
  	    while (index1 < zufallsziehung.length)
					          # VERSCHACHTELTE ABFRAGEN
					      if (tip.include?(zufallsziehung[index2]))
						        print "\t"
						        print (((zufallsziehung[index2]).to_s).green)
					        	index2 += 1
						        #break
					      else
					          print "\t"
						        print (((zufallsziehung[index2]).to_s).red)
						        index2 += 1
						        #break
		            end #if
		            index1 += 1
		    end #while
		          
		          if ( zufallsziehung[0] == tip[0] )
						        print "\t"
						        print ((zufallsziehung[0]).to_s).green
						        print "\n\n"
					        	index2 += 1
						        #break
					      else print "\t"
						        print ((zufallsziehung[0]).to_s).red
						        print "\n\n"
						        index2 += 1
						        #break
		            end
		          
		          
		end #join
		
		
	def vergleich_score (tip, ziehung):float
		
		tipzahlen = tip[1,7]
		ziehungen = ziehung[1,7]
		
		score = 0.0 
		index = 1

		while (index <= ziehungen.length) do 
			if (tipzahlen.include?(ziehung[index]))
				score += (100/12)
				index += 1
		  else
		    score += 0
			  index += 1
		  end #if
		end #while

		if (tip[0] == ziehung[0])
			score = score*2
		end

		return score
	end #vergleich_score
	
	def score(randomz, tip)
	print("Ihr Score liegt bei: " + (vergleich_score(randomz, tip).to_s).green + "%".green + "\n\n")
  end
  
  
  
	def ausgabe49(tip, array)
		    print "\t\t\tIhre Superzahl lautet: " + "\t\t " + (array[0].to_s).black.on_white
		    puts()
		
		    lottoschein_filled = Array.new(50, String) 
		    # warum nicht auch: 
		    # Lottoschein.new(array)
		    # ?!!
		    # !! wegen dieser unpässlichkeit wurden die Lotto-Tips soo lange nicht angezeigt !!
		
		    zehl_index = 1

		    print "\tIhr Lottoschein sieht so aus:\n"

		    7.times do
				    7.times do 
					    if ((zehl_index == array[1]) or (zehl_index == array[2]) or (zehl_index == array[3]) or (zehl_index == array[4]) or (zehl_index == array[5]) or (zehl_index == array[6])) #do
						    lottoschein_filled[zehl_index] = zehl_index
						    aktuell = zehl_index.to_s
						    print "\t"
						    print aktuell.black.on_white 
						    zehl_index += 1
					    else lottoschein_filled[zehl_index] = zehl_index
						    aktuell = zehl_index.to_s
						    print "\t"
					      print aktuell
						    zehl_index += 1
					    end #if
			      end #7
				print "\n"
		  end #7
		  puts()
	  end #ausgabe49 
  
  def ausgabe_2color(lotZZ, lotTipp)
  n = 1
  lotZ = lotZZ[1, 7]
  lotTip = lotTipp[1, 7]
  ##SYNTAX:
  # print(((n).to_s).black.on_green)
  
  if ( lotZZ[0] == lotTipp[0] )
	    print "\t\t\tIhre Superzahl lautet: " + "\t\t "
			print (((lotZZ[0]).to_s).green)
			print "\n\n"
	else print "\t\t\tIhre Superzahl lautet: " + "\t\t "
			 print (((lotZZ[0]).to_s).red)
			 print "\n\n"
	end 
  
  7.times do
    7.times do
      if (lotZ.include?(n) and (lotTip.include?(n)))
          print("\t")
          print(((n).to_s).black.on_green)
      elsif (lotZ.include?(n) and (!lotTip.include?(n)))
          print("\t")
          print(((n).to_s).black.on_red)
      elsif (!lotZ.include?(n) and (lotTip.include?(n)))
          print("\t")
          print(((n).to_s).black.on_white) 
      else print("\t") 
           print(n)
      end #if
      n += 1
    end
    print("\n")
  end

  end #ausgabe_2color
  


end #Class schließen
	  #Hauptprogramm
	    
lottoschein_hier = Lottospiel.new()

#LOTTO-TIP
tip0 = [7, 11, 22, 33, 44, 48, 49]

#LOTTO-ZAHLEN-HASH
tip2 = [7, 22, 23, 34, 45, 46, 47]

#funktioniert mit "E"
#tip1 = lottoschein_hier.zahlenEingeben()
#tip1 = tip0

puts()
puts()
puts("## Tip 0:")
lottoschein_hier.ausgabe7(tip0)
print("\t" + lottoschein_hier.superzahl(tip0).to_s + " ist Superzahl" + "\n \n")

puts("## Die Lottoziehung ist: ")
randomz = lottoschein_hier.zufallsziehung(7)
lottoschein_hier.ausgabe7(randomz)
print("\t" + lottoschein_hier.superzahl(randomz).to_s + " ist Superzahl" + "\n \n")

#lottoschein_hier.join(tip2, tip0)
#lottoschein_hier.score(tip2, tip0)
#puts()
#puts()

#funktioniert:
#lottoschein_hier.ausgabe49(tip1, tip0)

lottoschein_hier.ausgabe_2color(tip0, randomz)
lottoschein_hier.score(tip0, randomz)
lottoschein_hier.join(tip0, randomz)



puts()


