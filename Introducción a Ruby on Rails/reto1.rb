def palindromo?(frase)
	esPalidromo = true
	frase_limpia = frase.gsub(/[^a-zA-Z]/, "").downcase
	arreglo = frase_limpia.split(//);
	reverse = frase_limpia.reverse.split(//)

	arreglo.length.times do |i|
		if arreglo[i]!=reverse[i]
			esPalidromo = false
			break
		end
	end
	return esPalidromo
end

def cuenta_palabras(s)
	hash =  Hash.new(0)
	frase_limpia = s.gsub(/[^a-zA-Z]/, " ").downcase
	palabras = frase_limpia.split(" ")

	palabras.each do |palabra|
		hash[palabra] += 1
	end

	return hash
end

def hanoi(numero_discos, t_origen = "1", t_destino = "3", t_alterna = "2")
	if numero_discos == 1
		puts  "mueva el disco #{numero_discos} de la torre #{t_origen} a la torre #{t_destino}"
	else
		hanoi(numero_discos -1, t_origen, t_alterna, t_destino)
		puts  "mueva el disco #{numero_discos} de la torre #{t_origen} a la torre #{t_destino}"
		hanoi(numero_discos -1, t_alterna, t_destino, t_origen)
	end
end

def sort(arreglo, asc)
	if asc
		return arreglo.sort
	else
		return arreglo.sort.reverse
	end
end

def char_count(s, c)
	count = 0
	s.each_char do |x|
		if x == c
			count += 1
		end
	end
	return count
end

def atoi(s)
	s.to_i
end

