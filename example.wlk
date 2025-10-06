// clase: un molde. Es una dedinición, no un objeto.
// conv: nombre comienza con mayuscula

class Globo{
  const color 
  var diametro
  method inflar(){
    diametro +=1
  }
  method color() = color
  method diametro() = diametro
  method explota(){
    diametro=0
  }
}

// instanciamos un objeto
// const glob = new Globo()  ---> da error. Me pide que le de los atributos color y diametro.

// esto sí funciona
const glob = new Globo(color = 'rojo', diametro=0)

// también podría en la clase darle desde un inicio valpres por defecto a los atributos. Por ejemplo poner var diametro = 0 en la clase.


object manojo{
  const globos = []
  method glojos()  = globos
  method agregarGlobo(color, diametro){
    globos.add(new Globo(color=color, diametro=diametro))
  // otro approach que requiere que primero guarde una instancia de un globo en un objeto.
  method agregarGlobo(globo){
    globos.add(globo)
  }
  }
}


