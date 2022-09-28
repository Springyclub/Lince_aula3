import 'dart:collection';
import 'dart:math' as math;

import 'package:test/expect.dart';
void main(){
  var fila = new Queue<String>();
  var nome = new Queue<String>();
  var sobreNome = new Queue<String>();
  nome.add("Guilherme");
  nome.add("Matheus");
  nome.add("Sandy");
  sobreNome.add("Fernandes");
  sobreNome.add("Brisida");
  sobreNome.add("Ejunior");

  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa();
  final novaPessoa = pessoa1.gerarNomeAleatorio(nome,sobreNome);
    print("$novaPessoa entrou na fila");
    fila.add(novaPessoa);
  for(int i=0;i< fila.length;) {
    print("${fila.elementAt(i)} foi atendida(o)");
    fila.removeFirst();
  }

  }
  class Pessoa{

  gerarNomeAleatorio(Queue<String> nome,Queue<String> sobreNome){
    final random = math.Random();
    final nomeAleatorio = nome.elementAt(random.nextInt(nome.length,));
    final sobreNomeAleatorio =sobreNome.elementAt(random.nextInt(sobreNome.length,));
    return "$nomeAleatorio $sobreNomeAleatorio";
  }
  }