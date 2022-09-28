void main() {
  Set<String> oio={};
  oio.add("value");
  Map<String, double> precos={};
  Map<double, String> contrario={};
  contrario[6000.20] ="Nova York";
  precos["Nova York"] =6000.20;
    print(precos["Nova York"]);
  precos["Nova York"] =6000;
  print("atualizado ${precos["Nova York"]}");
  precos["Nova"]=1090;
print(precos);
}
Set<String>cadastrarLugares(String lugares, Set<String> banco){
  //Set<String>banco = <String>{}; NÂO PODE SETTAR UM AQUI
  banco.add(lugares);
  return banco;
}
enum Transportes {
  car,
  bicicleta,
  correndo,
  busao,
  carrinhoDeMao,
  brucus,
  rolando
}
