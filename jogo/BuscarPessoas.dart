void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas no sistema
  Map<String, dynamic> PP = {
    'Jose': Mes.abril,
    'Arthur': Mes.agosto,
    'João': Mes.abril,
    'Jesse': Mes.dezembro,
    'Roberta': Mes.fevereiro,
    'Carla': Mes.fevereiro,
    'Thania': Mes.agosto,
    'Rafaela': Mes.marco,
    'Yuri': Mes.junho,
    'Jonas': Mes.setembro,
    'Elias': Mes.outubro,
    'Abel': Mes.maio,
    'Danilo': Mes.abril,
    'Jonathan': Mes.abril,
    'Joseph': Mes.setembro,
    'Abdul': Mes.janeiro,
    'Jean': Mes.abril
  };
  PP.forEach((k, v) => {controleDePessoas..cadastrarPessoa(Pessoa(k, v))});

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in controleDePessoas.mesesComPessoas) {
    print('\n${mes.name}');

    for (final pessoa in controleDePessoas.pessoasPorMes(mes)) {
      print(' > ${pessoa.nome}');
    }
  }
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

class ControleDePessoas {
  final _pessoas = <Pessoa>[];

  /// Cadastra uma pessoa no sistema
  void cadastrarPessoa(Pessoa pessoa) => _pessoas.add(pessoa);

  /// Retorna a lista de meses com pessoas cadastradas
  List<Mes> get mesesComPessoas {
    final meses = <Mes>{};
    for (final pessoa in _pessoas) {
      if (!meses.contains(pessoa.mesDeNascimento)) {
        meses.add(pessoa.mesDeNascimento);
      }
    }
    return meses.toList()..sort((a, b) => a.index.compareTo(b.index));
  }

  /// Retorna a lista de pessoas que nasceram no [mes] especificado
  List<Pessoa> pessoasPorMes(Mes mes) {
    final pessoas = <Pessoa>[];
    for (final pessoa in _pessoas) {
      if (pessoa.mesDeNascimento == mes) {
        pessoas.add(pessoa);
      }
    }
    return pessoas;
  }
}
