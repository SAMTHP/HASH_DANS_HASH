# Exercices pour calculer les calories 

# Création des hash

########################################################################

# Déclaration du hash WELSH
WELSH= Hash.new

# Remplissage des couples valeurs du hash "WELSH"
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Proteines"] = 36.3

########################################################################

# Déclaration du hash FRITES
FRITES= Hash.new

# Remplissage des couples valeurs du hash "FRITES"
FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Proteines"] = 3.4

########################################################################

# Déclaration du hash BIERE
BIERE= Hash.new

# Remplissage des couples valeurs du hash "BIERE"
BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Proteines"] = 4

########################################################################

# Déclaration du hash CALORIES
CALORIES= Hash.new

# Remplissage des couples valeurs du hash "CALORIES"
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Proteines"] = 4

#########################################################################

# Déclaration du hash MENU
MENU= Hash.new

PRIX = Hash.new

PRIX['WELSH'] = Hash.new
PRIX['WELSH'] = {'prix' => 15}
PRIX['FRITES'] = Hash.new
PRIX['FRITES'] = {'prix' => 4}
PRIX['BIERE'] = Hash.new
PRIX['BIERE'] = {'prix' => 5}


# Remplissage des couples valeurs du hash "MENU"
MENU['WELSH'] = WELSH
MENU['FRITES'] = FRITES
MENU['BIERE'] = BIERE
MENU[nil] = PRIX
##########################################################################

# Définition de la méthode qui calculera les calories
def weight_watcher(hash)
	# cal_lipides = (WELSH['Lipides']*CALORIES['Lipides'])
	# cal_glucides = (WELSH['Glucides']*CALORIES['Glucides'])
	# cal_proteines = (WELSH['Proteines']*CALORIES['Proteines'])
	# cal_total = cal_lipides + cal_glucides + cal_proteines
	# puts "Le repas \"WELSH\" fournit #{cal_total} calories. "
	calcul = 0 

	hash.each do |k, v|
		calcul = calcul + v * CALORIES[k]
	end
	
	puts "Le repas \"WELSH\" fournit #{total} calories."
end

def meal_weight_watchers(hash)

	calcul = 0
	hash.each do |k, v|
		if k != nil
			v.each do |key, val|
			calcul = calcul + val * CALORIES[key]
			
			end
		end
	end
	puts calcul
end 

def meal_price(hash)

	calcul = 0
	hash[nil].each do |k, v|
		v.each do |key, val|

			calcul = calcul + val  # PRIX[key]
			
		end
	end
	puts calcul
end 




meal_weight_watchers(MENU)