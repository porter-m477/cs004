void main() {
 
  final Map<String, dynamic>carro ={
    'marca':'Toyota',
    'motor': true,
    'klm': 4000,
    'detalle':<String>['1','1'],
    'submapa': <int, String>{
      1: 'ABC',
      2: 'CDF',
      3: 'FRE',
    }
  };
  
  final carros = {
    1: 'ABC',
    2: 'CDF',
    3: 'FRE',
  };
  
  //print(carro);
  //print(carros);
  
  //print('Hola ${carro['marca']}');
  //print('Hola ${carro[1]}');
  // print('Hola ${carros[2]}');
  //print('Submapa 2 ${carro.values.elementAt(4)}');//Muestro todo el contenido de submapa
  
  //Tarea 2:
  //Selecciona categoría 2 de 'submapa'
  //Fuente: https://www.youtube.com/watch?v=ps_xpkruXbw
  //Titulo: Flutter Widget Column, Spread Operator, List, and Map All in One
  //Canal: dbestech
  print('Submapa 2: ${carro.values.elementAt(4)[2]}'); //Según ejemplo 2 >carro
  
}
