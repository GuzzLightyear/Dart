void main() {
  int idade = 21; // var idade = 21;
  double altura = 1.66; //var altura = 1.66
  bool geek = true; //var geek = true;
  const String nome = 'Gustavo Milioni';
  final String apelido;
  apelido = 'Guzz';
  bool maiorDeIdade;
  int energia = 100;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for (int i = 0; i < 5; i++) {
    print('Concluí $i voltas');
  }

  while (energia > 0) {
    print('Mais uma Repetição $energia');
    energia = energia - 10;
  }

  List<dynamic> guzz = [idade, altura, geek, nome, apelido];

  String frase = 'Eu sou ${guzz[3]} \n'
      'também conhecido pelo apelido de ${guzz[4]}.\n'
      'Eu me considero geek? ${guzz[2]}. \n'
      'Eu tenho ${guzz[1]} metros de altura e ${guzz[0]} anos de idade \n'
      'Eu sou maior de idade? ${maiorDeIdade}';

  print(frase);
}
