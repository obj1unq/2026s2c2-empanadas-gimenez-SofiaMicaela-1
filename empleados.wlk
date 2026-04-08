object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0 

    method sueldo(_sueldo) {
      sueldo = _sueldo
    }
    method sueldo() {
      return sueldo
    }
    method gastar(monto) {
        if (monto <= dinero) {
        dinero = dinero - monto
        } else {
        deuda = deuda + (monto - dinero)
        dinero = 0
        }
    }
    method deuda(){
        return deuda
    }
    method dinero(){
        return dinero
    }
    method cobrar(monto) {
        if (deuda >= monto) {
            deuda = deuda - monto
        } else {
            dinero = dinero + (monto - deuda)
            deuda = 0
        }
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
    method vender(cantidad) {
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
    var fondo = 300000

    method fondo(){
        return fondo
    }
    method pagarSueldo(empleado) {
      fondo = fondo - empleado.sueldo()
      empleado.cobrar(empleado.sueldo())
    }
}
