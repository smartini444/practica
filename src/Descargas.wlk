class Descarga{
	var autor
	var usuario
	var diaDeDescarga
	
	method diaDeDescarga(){return diaDeDescarga}
	method diaDeDescarga(unDia){diaDeDescarga = unDia}
	method usuario(unUsuario){usuario = unUsuario}
	method montoPorAutor(){return 1}
	method costoPrePlan(){if(usuario.compania().nacional()){return self.montoPorAutor() + (self.montoPorAutor() / 100 )* 5 +  self.montoPorAutor() / 4} 
		else return {self.montoPorAutor()+(self.montoPorAutor()/100 )* 5 +(self.montoPorAutor()/4) + usuario.compania().impuesto()}}
	
	method costoFinal(){if(usuario.prepago()){return self.costoPrePlan() + self.costoPrePlan() / 10}else return self.costoPrePlan()}
	
}
class Ringtone inherits Descarga{
	var duracion
	override method montoPorAutor(){return duracion * autor.precioPorMinuto()}
}
class Chiste inherits Descarga{
	var cantidadDeCaracteres
	override method montoPorAutor(){return cantidadDeCaracteres * 5}
}
class Juego inherits Descarga{
	var montoParticular
	override method montoPorAutor(){return montoParticular}
}