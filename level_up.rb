# Exercices pour calculer les calories 

# Création d'un hash qui contiendra de repas, avec les apports nutritifs associés

# Déclaration du hash WELSH

WELSH= Hash.new

# Déclaration du hash WELSH

CALORIES= Hash.new

# Remplissage des couples valeurs du hash "WELSH"

WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Proteines"] = 36.3

# Remplissage des couples valeurs du hash "CALORIES"

CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Proteines"] = 4

# Définition de la méthode qui calculera les calories
def weight_watcher(hash1)
	# cal_lipides = (WELSH['Lipides']*CALORIES['Lipides'])
	# cal_glucides = (WELSH['Glucides']*CALORIES['Glucides'])
	# cal_proteines = (WELSH['Proteines']*CALORIES['Proteines'])
	# cal_total = cal_lipides + cal_glucides + cal_proteines
	# puts "Le repas \"WELSH\" fournit #{cal_total} calories. "
	calcul = total = 0 

	hash1.each do |k, v|
		calcul = v * CALORIES[k]
		total = total += calcul
	end
	
	puts "Le repas \"WELSH\" fournit #{total} calories."
end

weight_watcher(WELSH)