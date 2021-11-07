class Autor{
	var precioPorMinuto 
	method precioPorMinuto(){return precioPorMinuto}}
	
class Usuario{
	var descargaActual
	var prepago
	const descargas = []
	var compania 
	var montoGastado = 0
	var saldo
	const hoy = new Date()
	method compania(){return compania}
	method descargaActual(unaDescarga){descargaActual=unaDescarga}
	method companiaDeTelecomunicacionNacional(){return compania.nacional()}
	method puedeComprar(){if(prepago){if(descargaActual.precioFinal() > saldo ){return false} else {return true}}
											else {return true}}
	method descargar(){if(self.puedeComprar()){descargaActual.diaDeDescarga(hoy) descargas.add(descargaActual) self.cobrar()}}
	method cobrar(){if(prepago){saldo -= descargaActual.precioFinal()}else montoGastado += descargaActual.precioFinal()}
	method descargasDelMes(){return descargas.filter({descarga => descarga.diaDeDescarga().month() == hoy.month()}).size()}
	method descagasDelDia(){return descargas.filter({descarga => descarga.diaDeDescarga().day() == hoy.day()})}
	
}
