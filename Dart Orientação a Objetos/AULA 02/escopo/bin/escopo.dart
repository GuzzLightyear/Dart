void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: cor);
  // criamos outra váriavel para puxar o resultado de uma função.
  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print('Falta $quantosDias dias para ficar madura');
}

void mostrarMadura({required nome, required int dias, required String cor}) {
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

//Escopo é algo que limita, por isso não podemos chamar uma váriavel de uma função para outra. apenas tudo que tiver dentro
// das {}, fora não podemos usar, podemos chamar a função mas não as variaveis dentro dela.
// criar uma função para ver quanto tempo falta para aquela fruta ficar madura

// como usar um valor de um resultado para outra função
// usamos return transformando a função no resultado e criamos uma variavel dentro da outra função utilizando a função
// e dando o parâmetro e recebendo o valor.
// ficando assim : o resultado de x = y(z)

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}
