import cosas.*

object camion {
	const property cosas = []
	var property cargaMaxima=2500
	var property peso= 1000
	
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
		return cosas.sum({cosa=>cosa.Peso()})
		
	}
	
	method excedidoDeCarga(){
		return self.pesoTotal()>self.cargaMaxima()
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
	
	method cosaMasPesada(){
		return
		
	}
	method pesosCosas(){
		return cosas.forEach({cosa=>cosa.peso()})
	}

	
	
}

object camioneta{
	var property peso=900
	var property cosas=[]
	var property cargaMaxima= 5
	
	method estaExcedido(){
		return cosas.size()<5
	}
	
	
	
	
}




















