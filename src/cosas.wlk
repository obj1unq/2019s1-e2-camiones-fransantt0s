object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	method cantBultos(){
		return 1
	}
	method producirCambios(){
		// No Hace nada
	}
}

object bumblebee {
	var property transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
	method cantBultos(){
		return {2}
		
	}
	method producirCambios(){
		self.transformar()
	}
}

object paqueteDeLadrillos{
	var  cantLadrillos=1
	method peso(){
		return cantLadrillos*2
	}
	
	method cantLadrillos(_cantidad){
		cantLadrillos=_cantidad
	}
	method nivelPeligrosidad(){return 2}
	method cantBultos(){
		return if (cantLadrillos>=100){
			1
		}
		else if(cantLadrillos.between(101,300)){
			2
		}
		else if(cantLadrillos>=301){
			3
		}
	}
	method producirCambios(){
		cantLadrillos+=12
	}
	
		
	
	
}
object arenaGranel{
	var  property peso= 0
	method peso(_peso){
		peso=_peso
	}
	method cantBultos(){
		return 1
	}
	
	method nivelPeligrosidad(){return 1}
	
	method producirCambios(){
		peso+=20
		
	}
}

object bateriaAntiaerea{
	var property tieneMisiles= false
	method peso(){
		return if (tieneMisiles){
			300
			
		}
		else{
			200
		}
		}
	
	method nivelPeligrosidad(){
		return if(tieneMisiles){
			100
	}
	else{
		0
	}
		
	}
	method cargarMisiles(){
		tieneMisiles= true
	}
	method cantBultos(){
		return if(tieneMisiles){
			2
		}
		else{
			1
		}
	}
	method producirCambios(){
		self.cargarMisiles()
	}
	
	
}

object contenedorPortuario{
	var cosas=[]
	method agregarUnaCosaAlContenedor(cosa){
		cosas.add(cosa)
	}
	method peso(){
		return 100 + cosas.size()
	}
	method nivelPeligrosidad(){
		
		if(not cosas.isEmpty()){
			
			return cosas.map({cosa => cosa.nivelPeligrosidad()}).max() 
		}else{
			
			return 0
		}
	}
	
	method cantBultos(){
		
		return 1 + cosas.map({cosa => cosa.bultos()}).sum()
	} 
	
	method producirCambios(){
		
		cosas.forEach({cosa => cosa.producirCambios()})
	}
}
	
	
	

object residuosRadioactivos{
	var property peso= 0
	method peso(_peso){
		peso=_peso
	}
	method nivelPeligrosidad(){
		return 200
	}
	method cantBultos(){
		return 1
	}
	method producirCambios(){
		peso+=15
	}
	
}
object embalajeDeSeguridad{
	var  cosa= knightRider
	
	method peso(){
		return cosa.peso()
	}
	method cambiarCosa(_cosa){ //Cambia la cosa que envuelve
		cosa=_cosa
	}
	method nivelPeligrosidad(){
		return cosa.peso()/2
	}
	method cantBultos(){
		return 2
	}
	method producirCambios(){}
}





