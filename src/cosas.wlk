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

object paqueteDeLadrillos{
	var pesoLadrillo=2
	var cantLadrillos= 
	method ponerRefuerzo(){
		if(cantLadrillos>)
	}
	
	
}
object refuerzo{
	method peso(){
		return 10  
	}
	
}
