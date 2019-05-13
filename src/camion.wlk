import cosas.*

object camion {
	var  property cosas = []
	var property peso= 1000
	method hacerCambios(){
		
		cosas.forEach({cosa => cosa.producirCambios()})
	}
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
		method pesoTotal(){
		return self.pesoCarga() + self.peso()
		}
		
	method cargarTodasLasCosas(){
		return cosas.forEach({})
		
	}
		
	
	method pesoCarga(){
		return cosas.sum({cosa=>cosa.peso()})
		
	}
	
	method excedidoDeCarga(){
		return self.pesoTotal()>2500
	}
	
	method objetosPeligrosos(nivel){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>nivel})
	}
	
	method objetosMasPeligrososQue(cosa){
		return cosas.filter({unaCosa=>unaCosa.nivelPeligrosidad()>cosa.nivelPeligrosidad()})
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all({cosa=>cosa.nivelPeligrosidad()<nivelMaximoPeligrosidad})
	}
	
	
	
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any({cosa=>cosa.peso().between(min,max)})
	}
	method cosaMasPesada(){
		return cosas.max({cosa=>cosa.peso()})
		}
		
		method totalBultos(){
			return cosas.sum({cosa=>cosa.cantBultos()})
		}
		
		method pesos(){
			return cosas.map({cosa=>cosa.peso()})
			
			}
			
		

	
	
}






















