class TallerLiterario {
	
	var property libros = #{}
	
	method agregarLibros(libro) {
		libros.add(libro)
	}
	method idiomasUsados() {
		return self.libros().map({l => l.idioma()})
	}
	method diasQueLleva() {
		return self.libros().size() + 1
	}
	method hayAlgunLibroGrande(){
		return self.libros().any({l => l.paginas()>500})
	}
	method sonDelMismoAutor() {
		return libros.all({l => l.autor()})
	}
	method implicaEsfuerzo() {
		return self.hayAlgunLibroGrande() or self.sonDelMismoAutor()
		and self.libros().size()>1
	}
	method sirveParaBroncearse() {
		return false
	}
	method esRecomendado(socio) {
		return socio.idiomasQueHabla().size()>1
	}
}

class Libro {
	var property idioma = ""
	var property paginas = 0
	var property autor = ""
}
