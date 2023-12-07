Poyecto Final 6/12/2023

- En chat_screen.dart
- solo enfocarse en el 'MessageBubble'

return ( message.desdeQuien == DesdeQuien.externo)
                  ? ReplyMessage()
                  : MessageBubble( message: message);// manejar el mensaje


- En lugar de que se imprima el texto por defecto quiero que se imprima 
el texto de imput desde el ChatBox

----- Puntos extra

Manejar los mensajes de respuesta recibiendolos desde una API
-Investigar los HTTP request
https://yesno.wtf/

Ustedes envian un texto y reciben una imagen