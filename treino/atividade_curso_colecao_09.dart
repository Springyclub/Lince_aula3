main(){
  Pessoa pessoa1 = new Pessoa("Yasmin", 14, true);
  pessoa1.toMap();
  dynamic gui=0;
  print(gui.runtimeType);
  var gui1="20";
}
class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){
    Map<String, dynamic> resultado = {};
    resultado["nome"] = this.nome;
    resultado["idade"] = this.idade;
    resultado["estaAutenticada"] = this.estaAutenticada;
    print(resultado);
    return resultado;
  }
}