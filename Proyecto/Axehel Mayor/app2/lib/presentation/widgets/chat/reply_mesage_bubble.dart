import "package:flutter/material.dart";

class ReplyMessage extends StatelessWidget {
  const ReplyMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Do veniam magna cupidatat pariatur.', 
            style: TextStyle( color: Colors.black),),
          ),
        ),
        const SizedBox(height: 5,),

        _ImageBubble(),
      ],

    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //se utiliza para capturar tamano de pantalla y adaptar la imagen
    //print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Imagen cargando...'),
            );
        },
        )
    );
    //return const Placeholder();
  }
}