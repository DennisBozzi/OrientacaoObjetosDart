void main() {
  Fruta fruta01 = Fruta('Laranja', 100.2, 'Verde e Amarelo', 'Doce e cítrica', 30);
  Fruta fruta02 = Fruta('Uva', 80.3, 'Roxo', 'Doce', 15);

  Legumes legumes01 = Legumes("Cenoura", 25.5, "Laranja", true);
  Citricas citrica01 = Citricas('Pitanga', 0.2, 'Vermelha', 'Azeda', 35, 0.2);
  Nozes nozes01 = Nozes("Noz", 0.5, "Marrom", "Gostoso", 80, 0.04);

  fruta01.estaMadura(50);
  fruta02.estaMadura(20);

  legumes01.printAlimento();
  legumes01.cozinhar();

  citrica01.citrica();
  nozes01.qtdOleoNatural();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDeColheita;
  bool? isMadura;

  Fruta(nome, peso, cor, this.sabor, this.diasDeColheita, {this.isMadura}) : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Ela está madura? $isMadura');
  }

  void fazerSuco() {
    print('Você acabou de fazer um suco de $nome');
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(nome, peso, cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('O(a) $nome está cozinhando.');
    } else {
      print('Nem precisa cozinhar');
    }
  }
}

class Citricas extends Fruta {
  double nivelCitrica;

  Citricas(nome, peso, cor, sabor, diasDeColheita, this.nivelCitrica) : super(nome, peso, cor, sabor, diasDeColheita);

  void citrica() {
    if (nivelCitrica > 2) {
      print('Esta fruta é muito cítrica - $nome');
    } else {
      print('Está fruta não é tão cítrica - $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(nome, peso, cor, sabor, diasDeColheita, this.porcentagemDeOleoNatural) : super(nome, peso, cor, sabor, diasDeColheita);

  void qtdOleoNatural() {
    print('O(a) $nome possui ${porcentagemDeOleoNatural * 100} por cento de óleo natural');
  }
}

/*
// 1 - Posicionais Obrigatórios - Posicionamento dos parametros na ordem correta (String nome, int dias)
// 2 - Nomeados Opcionais - Passa um parametro nomeado que não é obrigatório {String? cor}
// 3 - Parâmetros "Padrão" - Passa um valor default, para um parametro {String cor = "Sem cor"}
// 4 - Modificador "Required" - Ele é um parametro nomeado que é obrigatório {required double peso}

bool funcIsMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFalta = 30 - dias;

  if (quantosDiasFalta <= 0) {
    print('A fruta está madura!');
  } else {
    print('Faltam $quantosDiasFalta para a fruta amadurecer');
  }
}

void funcShowMadura(String nome, int dias, {String? cor, required double peso}) {
  if (dias >= 30) {
    print('A $nome está madura');
  } else {
    print('A $nome está verde');
  }

  if (cor != null) {
    print('A cor da $nome é $cor');
  }

  print('O peso da $nome é $peso');
}

funcRecursiva(int contador, int limite) {
  print('$contador');

  if (contador >= limite) {
    return;
  }

  funcRecursiva(contador + 1, limite);
} */
