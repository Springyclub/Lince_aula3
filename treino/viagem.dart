import 'locomocao.dart';
import 'dart:math';

class Corrida{
  Set<String> lugaresCadastrados = <String>{};
  static Map<String, dynamic> premiacao = {'position1' : 1, 'position2' : 2};
  static var gfg = {'position1' : 1, 'position2' : 2.0,
    'position3' : premiacao,'position4' : "premiacao1"};
  Transportes transporte;
  int _corridasVencidas = 2;
  Corrida({required this.transporte});
  escolherTransporte(Transportes transporte) {
    switch (transporte) {
      case Transportes.car:
        return print("vou de carro");
      case Transportes.bicicleta:
        print("Vou de bike");
        return;
      case Transportes.correndo:
        print("Vou correndo");
        break;
      case Transportes.busao:
        print("Vou de busao");
        break;
      case Transportes.carrinhoDeMao:
        print("Vou de carrinhoDeMao");
        break;
      case Transportes.brucus:
        print("Vou de brucus");
        break;
      default:
        print("Alguem me leva então");
    }
  }
void visita(String localVisita){
  lugaresCadastrados.add(localVisita);
  _corridasVencidas++;
}
void registarPremiacao(String lugar, dynamic valor){
  premiacao[lugar] = valor;
}
int get consultarTotalDeCorridas{
    return _corridasVencidas;
}
void set alterarWins(int newQtd){
    if(newQtd<10){
      _corridasVencidas=newQtd;
    }else print("não da pra ganhar tanta corrida nocó!");
}
}