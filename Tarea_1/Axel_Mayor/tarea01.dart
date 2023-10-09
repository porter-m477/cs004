void main() {
  
  final Map<String, dynamic> carro = {
    'marca': 'Toyota',
    'motor': true,
    'klm': 4000,
    'detalle': <String>['1','1'],
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
  
  print(carro);
  print(carros);
  
  print(carro['submapa'][2]); // extraemos el valor 2 del submapa
  
  
}