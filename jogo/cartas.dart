import 'dart:collection';
main(){
  var cartas = new Queue<String>();
  cartas.add("♧s");
  cartas.add("♡s");
  cartas.add("♤");
  cartas.add("♢");
  /*
  criar um Map só para ter como excluir depois
  Map<String,int> cards={};
  cards["♧"]=1;
  cards["♡"]=2;
  cards["♤s"]=4;
  cards["♢"]=5;
  forEach para verificar se existe
  se existir adiciona, se não, não add
  cards.forEach((k, v) => {
    if(k != '♧' && k != '♡' && k != '♤' && k != '♢'){
      print("Naipe $k não existe")
}else cartas.add(k)
  });
   */
  //O mesmo código mas refatorado
  for(int i=0;i< cartas.length;i++) {
    if(cartas.elementAt(i) != '♧' || cartas.elementAt(i) != '♡'
        || cartas.elementAt(i) != '♤' || cartas.elementAt(i) != '♢'){
      print(cartas);
      cartas.remove(cartas.elementAt(i));
      print(cartas);
    }
  }
  /*
    for(int i=0;i< cartas.length;){
    print(cartas);
    cartas.removeLast();
  }
   */
}


