class Dependencia{
  const rodados = []
  const cantidadDeEmpleados
  method agregarAFlota(rodado){
    rodados.add(rodado)
  }
  method quitarAFlota(rodado){
    rodados.remove(rodado)
  }
  
  method pesoTotal() = rodados.sum({r => r.peso()})
  
  method estaBienEquipada() = rodados.size() >=3 and rodados.all({r => r.velocidad>= 100})
  method capacidadTotalEnColor(color) = rodados.filter({r=> r.colo() == color}).sum({r => r.capacidad()})
  
  method colorDelRodadoMasRapido() = rodados.max({r => r.velocidad()}).color() // hay que chequear que no sea vacía?
  
  // subtarea
  method capacidadTotal(){
    return rodados.sum({r => r.capacidad()})
  }
  
  // El self ahora hace referencia a cada objeto que se instancia
  method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotal()
  // faltan 2 métodos
  
}
