class Socio {
	var property actividadesRealizadas = #{}
	var property maximoDeActividades = 0
	var property edad = 0
	var property idiomasQueHabla = #{}
	
	method realizarActividad(actividad) {
		if (self.actividadesRealizadas().size() <= self.maximoDeActividades()){
		actividadesRealizadas.add(actividad) 
		
		}
		
		else{
			self.error("ya no podes hacer mas actividades")
		}
	}
	method esAdoradorDelSol() {
		return self.actividadesRealizadas().all({actividad => actividad.sirveParaBroncearse()})
	}
	method actividadesConEsfuerzo() {
		return self.actividadesRealizadas().filter({actividad => actividad.implicaEsfuerzo()})
	}
	method setIdiomasQueHabla(idioma) {
		idiomasQueHabla.add(idioma)
	}
	
	method realizoActividad(actividad) {
		return self.actividadesRealizadas().contains(actividad)
	}
	
	
	
	
	
}

class SocioTranquilo inherits Socio {
	 method actividadesQueLoAtraen(actividad) {
		return actividad.cuantosDiasLleva()>=4
	}
}

class SocioCoherente inherits Socio {
	 method actividadesQueLoAtraen(actividad) {
		if(self.esAdoradorDelSol()){
			return actividad.sirveParaBroncearse()
		}
		else{
			return actividad.implicaEsfuerzo()
		}
	}
}

class SocioRelajado inherits Socio {
	 method actividadesQueLoAtraen(actividad){
	return (self.idiomasQueHabla().intersection(actividad.idiomas())).size() > 0
	}
	
}
