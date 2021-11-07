object comerio {
	const usuarios = #{}
	method forzarDescarga(unaDescarga){usuarios.forEach({usuario=>usuario.descargar(unaDescarga)})}
}


class CompaniaDeTelecomunicacion{
	var nombre
	var nacional = true
	var impuesto
	method nacional(){return nacional}
	method impuesto(){return impuesto}
	method nombre(){return nombre}
	
}
