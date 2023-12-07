enum DesdeQuien { yo, externo}

class Message {
  final String text;
  final String? imageUrl;
  final DesdeQuien desdeQuien;

  Message({
    required this.text, 
    this.imageUrl, 
    required this.desdeQuien});
}