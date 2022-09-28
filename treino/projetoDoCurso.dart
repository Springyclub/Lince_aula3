
import 'locomocao.dart';
import 'viagem.dart';

void main(){
Corrida f1 = Corrida(transporte: Transportes.brucus);
print(f1.consultarTotalDeCorridas);
f1.visita("Los angeles");
print(f1.consultarTotalDeCorridas);
f1.alterarWins=300;
print(f1.consultarTotalDeCorridas);
}