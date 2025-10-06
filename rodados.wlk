class Corsa{
  // una vez instanciado el color no cambia
  const color 
  method capacidad() = 4
  method velocidad() = 150
  method peso() = 1300
  method color() = color
  
}

class Kwid{
  const tanqueAdicional
  method capacidad() = if (tanqueAdicional) 3 else 4
  method velocidad() = if (tanqueAdicional) 110 else 120
  method peso() = 1200 + if(tanqueAdicional) 150 else 0
  // buena practica. Preferir objeto a string
  method color() = azul
  
}

// const auto = new kwid(tanqueAdicional = false)

class AutoEspecial{
  // si ponemos un property en una constante sólo me construye el getter
  const property capacidad
  const property velocidad
  const peso
  const color
  
  // estas las hacemos clásicas a modo de ejemplo. Ahora son equivalentes, pero nos vamos a decantar por este método si el getter involucra una lógica más allá de decolver el valor. 
  method peso() = peso
  method color() = color
  
}

object trafic {
  var interior = comodo
  var motor = pulenta
  method capacidad() = interior.capacidad()
  method velocidad = motor.velocidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = blanco
  method cambiarMotor(nuevoMotor){
    motor = nuevoMotor
  }
}

object comodo{
  method capacidad() = 5 
  method peso() = 700
}

object pulenta {
  method peso() = 800
  method velocidad()=130
}

object bataton{
  method peso() = 500
  method velocidad()=80
}

object azul{
  
}

object blanco{
  
}

object rojo {
  
}