object galvan{
	var dinero = 0;
	var deuda = 0;
	var sueldo = 150000;
	
	method cobrarSueldo(){
		if(deuda<=sueldo){		
		dinero += sueldo - deuda;
		deuda = 0;
		}else{
			deuda -= sueldo;
		}
	}
	method sueldo(){
		return sueldo;
	}
	method cambiarSueldo(valor){
		sueldo = valor;
	}
	method gastar(cuanto){
		if(dinero>=cuanto){
			dinero -= cuanto;
		}else{
			deuda += cuanto-dinero;
			dinero = 0;			
		}
	}
	method totalDeuda(){
		return deuda;
	}
	method totalDinero(){
		return dinero;
	}
}

object baigorria{
	var dinero = 0;
	var sueldo = empanadasVendidas * 150
	var empanadasVendidas = 0;
	
	method sueldo(){
		return sueldo;
	}
	method setEmpanadasVendidas(cantidad){
		empanadasVendidas = cantidad;
	}
	method totalCobrado(){
		return sueldo;
	}
	method cobrarSueldo(){
		dinero += sueldo;
	}
}