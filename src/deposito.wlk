import camion.*
import cosas.*

object deposito {
	var property vehiculos=[]
	
	
	method estaEnPeligro(){
		return vehiculos.any({vehiculo=>vehiculo.excedidoDeCarga()})
	}
	
	method enviarCosas(cosas){
	 const vehiculoUsado= self.cualquierVehiculo()
	 cosas.forEach({cosa=>vehiculoUsado.cargar(cosa)})
	 vehiculos.remove(vehiculoUsado)
	 
	 
		

		
	}
	
	
	
	
	method cualquierVehiculo(){
		return vehiculos.anyOne()
	}
	
	
	
	
	
	
	}
	
	