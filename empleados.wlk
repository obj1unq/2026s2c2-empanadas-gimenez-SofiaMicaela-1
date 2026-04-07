object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0 

    method nuevoSueldo(monto) {
      sueldo = monto
    }
    method sueldo() {
      return sueldo
    }
    method gastar(monto) {
        if (monto > dinero){
            deuda = deuda + monto - dinero
            dinero = 0
        } 
        dinero = dinero - monto
    }
    method deuda(){
        return deuda
    }
    method dinero(){
        return dinero
    }
    method cobrar(monto){
        if deuda > 0 && deuda < monto {
            deuda = 0
            dinero = monto - deuda
        }
        if deuda > 0 && deuda > monto { 
            deuda = deuda - monto
        }
        dinero = dinero + monto 
        
    }


}

object baigorria{
    var totalCobrado = 0
    var cantidadEmpanadasVendidas = 0

    method sueldo() {
      return 15 * cantidadEmpanadasVendidas
    }
    method cantidadEmpanadasVendidas(){
        return cantidadEmpanadasVendidas
    } 
    method venderEmpanada(cantidad) {
        cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cantidad
    }
    method totalCobrado(){
        return totalCobrado 
    }
    method cobrar(monto) {
        totalCobrado = totalCobrado + monto
        cantidadEmpanadasVendidas = 0
    }
}

object gimenez {
    var fondoSueldos = 300000

    method fondoSueldos(){
        return fondoSueldos
    }
    method pagarSueldo(empleado) {
      fondoSueldos = fondoSueldos - empleado.sueldo()
      empleado.cobrar(empleado.sueldo())
    }
}