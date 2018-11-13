class ClaseDeGimnasia {
	var property idiomas = #{}
	
	method setIdiomas(idioma){
		if(idioma == "espaniol")
		idiomas.add(idioma)
		else
		self.error("solo clases en espaniol")
	}
	
	method cuantosDiasLleva() {
		return 1
	}
	method implicaEsfuerzo() {
		return true
	}
	method sirveParaBroncearse(){
		return false
	}
	method esInteresante() {
		return idiomas.size() >1
	}
	method esRecomendado(socio){
		return socio.edad().between(20,30)
	}
}
