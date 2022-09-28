import 'dart:math' as math;

main() {
  Map<String, int> desejos = {"Maçã": 231, "banana": 31,"Iorgute":20,"Miojo":3};
  Produto produto1 = Produto();

  desejos.forEach((k, v) => produto1.itensDesejados(k, v));
}

class Produto {
  static Map<String, int> desejados = {};
  static Map<String, int> produtos = {
    "Energético":20,
    "Pão de batata":30,
    "Refrigerante":40,
        "Maçã":10
  };
  int  progressoDesejados=0;
  int  progressoComprados=0;
  Map<String,int> estoque = {};
  Map<String, int> itensComprados = {};
  void comprarItem(String nome, int quantidade) {

    produtos.forEach((k, v) => {
    if (k == nome) {
        itensComprados[nome] = quantidade,
        print("Produto comprado"),
      if(quantidade<v){

      }
  }
    });
  }
  itensDesejados(String nome, int quantidade) {
    produtos.addAll({nome: quantidade});
    desejados.addAll({nome: quantidade});
    List<String> num = [];
    num.add(nome);
    print(desejados);
    final random = math.Random();
    final aleatorio = random.nextInt(
        num.length);
    print("Item pendente: ${num[aleatorio]}");
  }

}
