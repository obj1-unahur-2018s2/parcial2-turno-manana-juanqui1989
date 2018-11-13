class Viaje {

	var property idiomas = #{}

	method setIdiomas(idioma) {
		idiomas.add(idioma)
	}

	method cuantosDiasLleva()

	method implicaEsfuerzo()

	method sirveParaBroncearse()

	method esInteresante() {
		return idiomas.size() > 1
	}

	method esRecomendado(socio) {
		return self.esInteresante() and socio.actividadesQueLoAtraen(self) and not socio.realizoActividad(self)
	}

}

class ViajeDePlaya inherits Viaje {

	var property largoPlaya = 2000

	override method cuantosDiasLleva() {
		return self.largoPlaya() / 500
	}

	override method implicaEsfuerzo() {
		return self.largoPlaya() > 1200
	}

	override method sirveParaBroncearse() {
		return true
	}

}

class ExcursionACiudad inherits Viaje {

	var property cantidadDeAtraccionesAVisitar = 0

	override method cuantosDiasLleva() {
		return self.cantidadDeAtraccionesAVisitar() / 2
	}

	override method implicaEsfuerzo() {
		return self.cantidadDeAtraccionesAVisitar().between(5, 8)
	}

	override method sirveParaBroncearse() {
		return false
	}

	override method esInteresante() {
		return super() or self.cantidadDeAtraccionesAVisitar() == 5
	}

}

class ExcursionACiudadTropical inherits ExcursionACiudad {

	override method cuantosDiasLleva() {
		return super() + 1
	}

	override method sirveParaBroncearse() {
		return true
	}

}

class SalidaDeTrekking inherits Viaje {

	var property kmDeSenderos = 0
	var property diasDeSolPorAnio = 0

	override method cuantosDiasLleva() {
		return self.kmDeSenderos() / 50
	}

	override method implicaEsfuerzo() {
		return self.kmDeSenderos() > 80
	}

	override method sirveParaBroncearse() {
		return self.kmDeSenderos() > 200 or self.diasDeSolPorAnio().between(100, 200) and kmDeSenderos > 120
	}

	override method esInteresante() {
		return super() and self.diasDeSolPorAnio() > 140
	}

}

