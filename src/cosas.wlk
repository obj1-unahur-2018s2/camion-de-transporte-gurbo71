object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	const pesoPorLadrillo = 2
	var property cantidad = 0
	
	method nivelPeligrosidad() { return 2 }
	method agregarLadrillos(cant) { cantidad = cant }
	//method cantidadDeLadrillos() { return if (cant) }
	
}

object arenaAGranel {
	var _arena=0
	
	method agregarArena(arena) { _arena = arena }
	method nivelPeligrosidad() { return 1 }
	method peso() { return _arena }
	
	
}

object bateriaAntiaerea {
	var estaConMisiles=false
	
	method peso() {
		return if(estaConMisiles){ 300 }else{ 200 }
	}
	method nivelPeligrosidad() {
		return if(estaConMisiles){ 100 }else{ 0 }
	}
}

object contenedorPortuario {
	var estaVacio=true
	const cosasContenedor = []
	const pesoPropio = 100
	
	method agregar(unaCosa) {
		cosasContenedor.add(unaCosa)
		estaVacio=false
	}
	method peso() { return pesoPropio + cosasContenedor.sum({cosa=>cosa.peso()}) }
	method nivelPeligrosidad() {
		if(estaVacio){ 
			return 0
		}
		else{
			return cosasContenedor.max({cosa=>cosa.nivelPeligrosidad()}).nivelPeligrosidad()
		}
	}
}

object residuosRadioactivos {
	var _peso=0
	
	method nivelPeligrosidad() { return 200 }
	method asignarPeso(peso) { _peso = peso }
	method peso() { return _peso }
}

object embalajeDeSeguridad {
	var queCosa=null
	
	method embalar(unaCosa) {
		queCosa = unaCosa
	}
	method peso() { return queCosa.peso() }
	
	method nivelPeligrosidad() {
		return queCosa.nivelPeligrosidad()/2
	}
}















