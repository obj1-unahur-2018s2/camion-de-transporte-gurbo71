import cosas.*

object camion {
	const property cosas = [knightRider,bumblebee,paqueteDeLadrillos,arenaAGranel]
	const tara = 1000
	const pesoMaximo = 2500
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
	
	method pesoTotal() {
		return tara + cosas.sum({cosa=>cosa.peso()})		
	}
	
	method excedidoDePeso() {
		return self.pesoTotal()>pesoMaximo
	}
	
	method objetosPeligrosos(nivel) {
		return cosas.filter{c=>nivel<c.nivelPeligrosidad()}
	}
	
	method objetosMasPeligrososQue(unaCosa) {
		return self.objetosPeligrosos(cosas.nivelPeligrosidad())
		
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return cosas.all{c=>c.nivelPeligrosidad() < nivelMaximoPeligrosidad}
	}
	
	method tieneAlgoQuePesaEntre(min, max) {}
	
	method cosaMasPesada() {
		return cosas.max()
		
	}
	
	method totalBultos() {
		
		
	}
	
	method pesos() {
		
				
	}
	
}






