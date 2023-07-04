void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Verde e Amarelo';
  String sabor = 'Doce e cítrica';
  int diasDeColheita = 40;
  bool isMadura = funcIsMadura(diasDeColheita);

  print('A fruta está madura? $isMadura');

  funcShowMadura(nome, diasDeColheita, cor: corFruta, peso: peso);
}

// 1 - Posicionais Obrigatórios - Posicionamento dos parametros na ordem correta (String nome, int dias)
// 2 - Nomeados Opcionais - Passa um parametro nomeado que não é obrigatório {String? cor}
// 3 - Parâmetros "Padrão" - Passa um valor default, para um parametro {String cor = "Sem cor"}
// 4 - Modificador "Required" - Ele é um parametro nomeado que é obrigatório {required double peso}

void funcShowMadura(String nome, int dias, {String? cor, required double peso}) {
  if (dias >= 30) {
    print('A $nome está madura');
  } else {
    print('A $nome está verde');
  }

  if(cor != null){
    print('A cor da $nome é $cor');
  }

  print('O peso da $nome é $peso');
}

bool funcIsMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
