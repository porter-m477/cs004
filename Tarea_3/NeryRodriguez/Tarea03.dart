abstract class Animal{}

//Primeras clases
abstract class Mamifero extends Animal{}

abstract class Aves extends Animal{}

abstract class Pez extends Animal{}
    

mixin class Volar{
  void volar() => print('Puede volar');  //Método
}

mixin class Caminar{
  void caminar() => print('Puede Caminar'); //Método
}

mixin class Nadar{
  void nadar() => print('Puede nadar');  //Método
}

//Utilizando la idea del Mixin

class Delfin extends Mamifero with Nadar{} //Palabra clave WITH asociarla con MIXIN
class Bat extends Mamifero with Caminar, Volar{} //Mixin - tipo de especializacion
class Pato extends Mamifero with Caminar, Volar, Nadar{}
class Dove extends Mamifero with Caminar, Volar{}
class FlyingFish extends Mamifero with Nadar, Volar{}
  
//Tarea clase 18/10/2023  para 25/10/2023
//class Dove{}
//class Pato{}
//class Tiburon{}
//class PezVolador{}

void main(){
  final donald = Pato();
  donald.nadar();
  donald.volar();
  donald.caminar();
  
  final del = Delfin();
  del.nadar();
  
  final paloma = Dove();
  paloma.caminar();
  paloma.volar();
  
  final tiburon = Delfin();
  tiburon.nadar();
  
  final pezVolador = FlyingFish();
  pezVolador.nadar();
  pezVolador.volar();
  
  //Tarea
  //final paloma = Dove();
  //final tiburon = Tiburon();
  //final pezvolador = PezVolador();
  
}
