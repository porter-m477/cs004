abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Aves extends Animal {}

abstract class Pez extends Animal {}

mixin class Volar {
  void volar() => print('puede volar');
}

mixin class Caminar {
  void caminar() => print('puede caminar');
}

mixin class Nadar {
  void nadar() => print('puede nadar');
}

//Utilizando la idea del Mixin
class Delfin extends Mamifero with Nadar {}

class Bat extends Mamifero with Caminar, Volar {}

class Pato extends Mamifero with Caminar, Volar, Nadar {}

class Dove extends Aves with Caminar, Volar {}

class Tiburon extends Pez with Nadar {}

class PezVolador extends Pez with Nadar, Volar {}

void main() {
  final donald = Delfin();
  donald.nadar();

  final paloma = Dove();
  paloma.caminar();
  paloma.volar();

  final tiburon = Tiburon();
  tiburon.nadar();

  final pezVolador = PezVolador();
  pezVolador.nadar();
  pezVolador.volar();
}
