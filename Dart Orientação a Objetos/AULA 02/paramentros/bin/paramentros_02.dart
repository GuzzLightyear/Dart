void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: cor);

  /// para definir a cor opcionais, você escreve o parâmetro que definiu no caso "cor:" e defini da onde ele vai puxar ou receber
  /// "cor: cor"
}

// 1- mostrarMaduraPosicionais obrigatórios
// 2 - Nomeados Opcionais == dentro do parâmentros colocar {} na opção opcional.
// 3 - Parâmentros com "Padrão"
// 4 - Modificador "required" // ganha a obrigatoriedade de dar o nome e de posicionar da forma que eu quero.

/// Não podemos ter o required jundo com default pois um é obrigatório e outro não ou seja conflitando.

void mostrarMadura({required nome, required int dias, required String cor}) {
  // void esta retornando vazio, retornar o que esta pedindo dela. colocar void ou não antes da função da no mesmo
  // nosso parâmetro obriga chamar o nome e o dia, não podemos iniciar sem nenhum dos dois.
  // String não pode receber nulo, para receber o nulo coloque ? ficando String?
  // quando definimos no caso opcional, String cor = 'algo', você não precisa mais definir ele, pois não receberá valor nulo.
  // required quando colocado no parâmetro dentro do {} ele se torna obrigatório e pedindo para os argumentos definir quais serão atribuitos
  // ficando no argumento exemplo cor: cor, estou informando que a váriavel cor recebera o resultado cor que coloquei lá no inicio. SE TORNANDO OBRIGATORIO E NÃO MAIS OPCIONAL.

  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não esta madura.');
  }
  if (cor != null) {
    print('A $nome é $cor.');
  }
}

funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
