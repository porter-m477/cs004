void main() {
  final Map<String, dynamic> carro = {
    'marca': 'Toyota',
    'motor': true,
    'klm': 4000,
    'detalle': <String>['1', '1'],
    'submapa': <int, String>{
      1: 'ABC',
      2: 'CDF',
      3: 'FRE',
    }
  };

  print('Hola ${carro['submapa'][2]}');
}
