//Convertir la siguiente funcion int en lamba 

// void main (){
//   print(addNumbers(8,8));
// }
//   int addNumbers(int a, int b){
//     return a+b; 
//   }



// Creamos la funcion lambda 
  
void main(){
  var addNumbers = (a,b) => a+b;
  print(addNumbers(15,15));
}