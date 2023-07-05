void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Verde e Amarelo';
  String sabor = 'Doce e cítrica';
  int diasDeColheita = 30;
  bool isMadura;

  Fruta fruta01 = Fruta('Laranja', 100.2, 'Verde e Amarelo', 'Doce e cítrica', 30);
  Fruta fruta02 = Fruta('Uva', 80.3, 'Roxo', 'Doce', 15);

  //print('A primeira fruta é a ${fruta01.nome} e a segunda fruta é a ${fruta02.nome}');

  fruta01.estaMadura(50);
  fruta02.estaMadura(20);
}

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

//Usada como loop
funcRecursiva(int contador, int limite) {
  print('$contador');

  if (contador >= limite) {
    return;
  }

  funcRecursiva(contador + 1, limite);
}

class Fruta {
  String nome;
  double peso;
  String corFruta;
  String sabor;
  int diasDeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.corFruta, this.sabor, this.diasDeColheita, {this.isMadura});

  void estaMadura(int diasParaMadura) {
    isMadura = diasDeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Ela está madura? $isMadura');
  }
}
