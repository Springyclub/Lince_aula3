void main(){
  final list = ['José','João',"Pedro"];
  final mapa =<String, Pessoa>{
    "210397120":Pessoa("Jose",'210397120'),
    "2323":Pessoa("Pedro",'424')
  };
  print(mapa["210397120"]);
}
class Pessoa{
  final String nome;
  final String documento;

  Pessoa(this.nome, this.documento);
  String toString()=> '$nome($documento)';
}