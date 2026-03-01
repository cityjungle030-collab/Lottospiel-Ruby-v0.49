## KLASSE SCHWARZ/WEISS
require 'io/console'
require 'yaml' 


$international = YAML.safe_load_file('international.yml')
$languages = ["DE", "EN", "PT", "KR", "VN"]
#$lang = $languages[1]
	
	
class Lottospiel
  
	# Initializierungs Procedur
	# Muss alle klassenspezifischen Variablen enthalten
	# bekommt anscheinend keine Parameter!
	def new() 
		
		$lottoscheinraw = Array.new(50, Integer)
		#puts ("Das Lottofeld wurde angelegt. Ein Array mit 50 Feldern")

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
		#puts ("Das Lottofeld wurde angelegt mit new(). Ein Array mit 50 Feldern")

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
	      		# für file evtl mit puts
		        print "\t" + zahlenziehung[1].to_s 
		        print "\t" + zahlenziehung[2].to_s
		        print "\t" + zahlenziehung[3].to_s
		        print "\t" + zahlenziehung[4].to_s
		        print "\t" + zahlenziehung[5].to_s
		        print "\t" + zahlenziehung[6].to_s
		        print "\t" + zahlenziehung[0].to_s + $international['part19'][$lang] + "\n"
	end


	def superzahl (feld):Integer 
        var_superzahl = feld[0].to_i
        return var_superzahl
  end
  
  def zahlenEingeben ():array # 1 + 6
	    fertig = false
	    
	    while (!fertig) do
	      begin
		      puts $international['part1'][$lang]
          puts $international['part2'][$lang]
          puts "\t" + $international['part3'][$lang]
          puts "\t" + $international['part4'][$lang]
          puts()
          #print "'e' oder 'l' "
          eingabeChar = gets.chomp()
          eingabeChar = eingabeChar.upcase
               while ((eingabeChar != 'E') and (eingabeChar != 'L'))
                  puts $international['part5'][$lang]
                  eingabeChar = gets.chomp()
                  eingabeChar = eingabeChar.upcase
               end
               #auswahlpunkt = 1
               #puts(eingabeChar)
               
               case eingabeChar
	             when "E"
	                    begin
	                    
	          	 	      tip1 = -1
			                while (tip1 < 1) or (tip1 > 49)
				              puts $international['part6'][$lang]
				              tip1 = gets.to_i()
			                end 			

			                tip2 = -1
			                while (tip2 < 1) or (tip2 > 49) or (tip2 == tip1) 
				              puts $international['part7'][$lang]
				              tip2 = gets.to_i()
			                end 

			                tip3 = -1
			                while (tip3 < 1) or (tip3 > 49) or (tip3 == tip2) or (tip3 == tip1) 
				              puts $international['part8'][$lang]
				              tip3 = gets.to_i()
			                end 

			                tip4 = -1
			                while (tip4 < 1) or (tip4 > 49) or (tip4 == tip3) or (tip4 == tip2) or (tip4 == tip1)
				              puts $international['part9'][$lang]
				              tip4 = gets.to_i()
			                end 

			                tip5 = -1
			                while (tip5 < 1) or (tip5 > 49) or (tip5 == tip4) or (tip5 == tip3) or (tip5 == tip2) or (tip5 == tip1) 
				              puts $international['part10'][$lang]
				              tip5 = gets.to_i()
			                end 

			                tip6 = -1
			                while (tip6 < 1) or (tip6 > 49) or (tip6 == tip5) or (tip6 == tip4) or (tip6 == tip3) or (tip6 == tip2) or (tip6 == tip1) 
				              puts $international['part11'][$lang]
				              tip6 = gets.to_i()
			                end 

					            tip_Superzahl = -1
					            while tip_Superzahl < 0 or tip_Superzahl > 9  
					            puts $international['part12'][$lang]
					            tip_Superzahl = gets.to_i()
					            end 

					            puts()
					            puts()
					            fertig = true
	                    end #case e
	                    	        
	             when "L"
	                  begin
	                  korrekt = false
 	                  while (!korrekt)
	                    puts $international['part20'][$lang]
	                    puts $international['part21'][$lang]
	                    
	        	          # Strip Variante
	        	          str = gets.chomp()
	        	          liste = str.split(",")
	        	          tip1 = liste[1].to_i
	        	          tip2 = liste[2].to_i
	        	          tip3 = liste[3].to_i
	        	          tip4 = liste[4].to_i
	        	          tip5 = liste[5].to_i
	        	          tip6 = liste[6].to_i
	        	          tip_Superzahl = liste[0].to_i
	        	          if (tip1 == tip2) or (tip1 == tip3) or (tip1 == tip4) or (tip1 == tip5) or (tip1 == tip6) or (tip2 == tip3) or (tip2 == tip4) or (tip2 == tip5) or (tip2 == tip6) or (tip3 == tip4) or (tip3 == tip5) or (tip3 == tip6) or (tip4 == tip5) or (tip5 == tip6) or (tip_Superzahl < 0) or (tip_Superzahl > 9)
	        	               korrekt = false
	        	               fertig = false
	        	               puts($international['part22'][$lang])
	        	          else korrekt = true
	        	          end #if
		              
		                  # strip-Part
		                  # is_To_Do
		      
		                end #while
		                end #case L
               #fertig = true     
               end #when
          end
          fertig = true
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
			sleep(0.24)
			array[0] = tip_Superzahl.to_i
					#if (zahlenziehung [1] == zahlenziehung[2]) or (zahlenziehung[1]
			    return array
	end #zahleneingeben

	def zufallsziehung(sz) :Array
	    korrekt = false
	    tip_Los = Array.new(7, Integer)
	    
	    if (sz == 66)
	        sz = rand(0..9)
	    end #if
	    
	    while !korrekt do
	      tip_Los[0] = 0
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
		         korrekt = false
		    else korrekt = true
		    #else puts(">>INTERNER FEHLER mit der Datebverarbeitung").black.on_red_red
		    end #if
	
		end #while
		#unnötig: zufall = true
		return tip_Los
		end #zufallsziehung
		
		
	  # zeigt die Schnittmengen farbig ausgerwertet an
	  def join(tipp, zufallsziehungg)   ## Reihenfolge: (tipp, zufallsziehungg)
		    index1 = 0
		    index2 = 0
		    
		    tip = tipp[1, 6]
		    zufallsziehung = zufallsziehungg[1, 6]
		    
		    # war zwischen-check-Ausgabe:
		    #print("Die Länge ist: " + zufallsziehung.length.to_s + "\n\n")
		    
	      # ausgabe_tip(zufallsziehung)
		    
  	    while ((index1 < zufallsziehung.length) and (index2 < zufallsziehung.length))
					          # VERSCHACHTELTE ABFRAGEN
					      if (tip.include?(zufallsziehung[index1]))
						        print "\t"
						        print (((zufallsziehung[index1]).to_s).green)
					        	index1 += 1
						        #break
					      else
					          print "\t"
						        print (((zufallsziehung[index1]).to_s).red)
						        index1 += 1
						        #break
		            end #if
		            index2 += 1
		    end #while
		          
		    if (zufallsziehungg[0] == tipp[0])
						        print "\t"
						        print ((zufallsziehungg[0]).to_s).green
						        #break
				else print "\t"
						 print ((zufallsziehungg[0]).to_s).red
             #break
		    end #if
		    print("\n\n")
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
	
	def score(tip, randomz)
	    print("\t" + $international['part13'][$lang] + vergleich_score(tip, randomz).to_s + "%" + "\n\n")
  end
  
  
                #array = tip
	def ausgabe49(array)
		    puts()
		    puts()
		    print "\t\t\t" + $international['part14'][$lang] + "\t\t " + (array[0].to_s)
		    puts()
		
		    lottoschein_filled = Array.new(50, String) 
		    # warum nicht auch: 
		    # Lottoschein.new(array)
		    # ?!!
		    # !! wegen dieser unpässlichkeit wurden die Lotto-Tips soo lange nicht angezeigt !!
		
		    zehl_index = 1

		    print "\t" + $international['part15'][$lang]
		    puts()

		    7.times do
				    7.times do 
					    if ((zehl_index == array[1]) or (zehl_index == array[2]) or (zehl_index == array[3]) or (zehl_index == array[4]) or (zehl_index == array[5]) or (zehl_index == array[6])) #do
						    lottoschein_filled[zehl_index] = zehl_index
						    aktuell = zehl_index.to_s
						    print "\t"
						    print aktuell
                print " <<<" 
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
		  puts()
	  end #ausgabe49 
  
  def ausgabe_2color(lotTipp, lotZZ)
  n = 1
  lotZ = lotZZ[1, 7]
  lotTip = lotTipp[1, 7]
  ##SYNTAX:
  # print(((n).to_s).black.on_green)
  
  if ( lotZZ[0] == lotTipp[0] )
	    print "\t\t\t" + $international['part14'][$lang] + "\t\t "
			print ((lotTipp[0]).to_s + " <<<")
			print "\n\n"
	else print "\t\t\t" + $international['part14'][$lang] + "\t\t "
			 print ((lotTipp[0]).to_s + " f")
			 print "\n\n"
	end 
  
  7.times do
    7.times do
      if (lotZ.include?(n) and (lotTip.include?(n)))
          print("\t")
          print((n).to_s + " <<<")
      elsif (lotZ.include?(n) and (!lotTip.include?(n)))
          print("\t")
          print((n).to_s + " Z")
      elsif (!lotZ.include?(n) and (lotTip.include?(n)))
          print("\t")
          print((n).to_s + " f")
      else print("\t") 
           print(n)
      end #if
      n += 1
      end
  print("\n")
  end
  print("\n\n")
  end #ausgabe_2color

  def longRun(tipRun) :float
      n = 1
      quot = 0.0
      sum = 0
      ausgabe7(tipRun)
      ausgabe49(tipRun)
      while (n < 60)
        aktZufall = zufallsziehung(66)
        print("\n\n\t" + "#" + n.to_s + " Ziehung" + "\n")
        ausgabe_2color(tipRun, aktZufall)
        score(tipRun, aktZufall)
        quot = ("%.3f" % ((quot.to_f + (vergleich_score(tipRun, aktZufall))) / n)).to_s
        sum = sum + vergleich_score(tipRun, aktZufall)
        print("\t" + $international['part17'][$lang] + "\t\t" + quot.to_s + "\n\n")
        print("\t" + $international['part23'][$lang] + "\t\t" + sum.to_s + "\n\n")
        n = n + 1
        sleep(0.25)
      end #while
      return sum
  
  end #longRun



  def menue()
    puts($international['part24']['DE'])
    puts($international['part24']['EN'])
    puts($international['part24']['PT']) 
    puts($international['part24']['KR'])
    puts($international['part24']['VN']) 
    puts()
    puts($international['part25']['DE'])
    puts($international['part25']['EN']) 
    puts($international['part25']['PT']) 
    puts($international['part25']['KR'])
    puts($international['part25']['VN']) 
    repeat = true
   while (repeat == true)
    eingabeChar = STDIN.getch
    eingabeChar = eingabeChar.upcase
    while ((eingabeChar != 'D') and (eingabeChar != 'E') and (eingabeChar != 'P') and (eingabeChar != 'H') and (eingabeChar != 'K') and (eingabeChar != 'V') and (eingabeChar != 'Q'))
        puts($international['part25']['DE'])
        puts($international['part25']['EN']) 
        puts($international['part25']['PT']) 
        puts($international['part25']['KR'])
        puts($international['part25']['VN']) 
        eingabeChar = STDIN.getch
        eingabeChar = eingabeChar.upcase
    end #while

    case eingabeChar
         when 'D'
            $lang = $languages[0]
         
         when 'E'
            $lang = $languages[1]

         when 'P'
            $lang = $languages[2]
         
         when 'H'
            $lang = $languages[3]
         
         when 'K'
            $lang = $languages[3]
         
         when 'V'
            $lang = $languages[4]

         when 'Q'
         	repeat = false 
         	break
            
    end #case
    
    print($international['part26'][$lang])
    print()
    tiptaken = zahlenEingeben()
    ausgabe49(tiptaken)
    ausgabe7(tiptaken)
    print()
    print($international['part27'][$lang])
    print()
    #eingabeChr = gets.chomp()
    #eingabeChr = eingabeChr.upcase
    
    #while ((eingabeChr != 'S') and (eingabeChr != 'W'))
        #eingabeChr = gets.chomp()
        #eingabeChr = eingabeChr.upcase
    #end #while
    
    eingabeChr = STDIN.getch()
    eingabeChr = eingabeChr.upcase
    while ((eingabeChr != 'S') and (eingabeChr != 'W') and (eingabeChr != 'Q'))
            eingabeChr = STDIN.getch
            eingabeChr = eingabeChr.upcase
    end

    case eingabeChr
         when 'S'
               begin
               rd = zufallsziehung(66)
               ausgabe_2color(tiptaken, rd)
               vergleich_score(tiptaken, rd)
               score(tiptaken, rd)
               strftime = Time.now.strftime("%Y-%m-%d %H:%M:%S").to_s
               print()
               print($international['part28'][$lang])
               print()
               File.open("lotto-stand.yml", "a") do |file|
                    file.puts ""
                    file.puts strftime
                    file.puts ausgabe_2color(tiptaken, rd)
                    file.puts vergleich_score(tiptaken, rd)
                    file.puts score(tiptaken, rd)
               end #file
         end
         
         when 'W'
               begin
               rd = zufallsziehung(66)
               strftime = Time.now.strftime("%Y-%m-%d %H:%M")
               sum = longRun(tiptaken)
               File.open("lotto-stand.yml", "a") do |file|
                    file.puts ""
                    file.puts strftime
                    #file.puts ausgabe_2color(tiptaken, rd)
                    #file.puts vergleich_score(tiptaken, rd)
                    #file.puts score(tiptaken, rd).to_s
                    file.puts "SCORE:" + "\t" + sum.to_s
                    #file.puts ausgabe7(tiptaken)
                    file.puts "\t" + tiptaken[1].to_s 
		        	file.puts "\t" + tiptaken[2].to_s
		        	file.puts "\t" + tiptaken[3].to_s
		        	file.puts "\t" + tiptaken[4].to_s
		        	file.puts "\t" + tiptaken[5].to_s
		        	file.puts "\t" + tiptaken[6].to_s
		        	file.puts "\t" + tiptaken[0].to_s + $international['part19'][$lang] + "\n"
                    file.puts ""
                   #file.puts ""
               end #file
         end

     	 when 'Q'
     	 repeat = false 
     	 break
    end #case
    
    print($international['part28'][$lang])
    print()
    print()
    print($international['part29'][$lang] + "\n\n")
   	eingChr = STDIN.getch()
    eingChr = eingChr.upcase
    while ((eingChr != 'R') and (eingChr != 'Q'))
            eingChr = STDIN.getch
            eingChr = eingChr.upcase
    end #while
    case eingChr 
    when 'R'
    	repeat = true
    
    when 'Q'
    	repeat = false
    
    end #case
   end #while
    
  end #menue


end #Class schliessen
	  #Hauptprogramm
	    
lottoschein_hier = Lottospiel.new()
lottoschein_hier.menue()



