void main() {
  ///Comentário de Documentação com '3' / no lugar de '2' /
  /** Multi comentário de Documentação**/

  //Variáveis
  //Informações sobre o nosso Personagem
  int idade =
      21; // var idade = 21; pode colocar como variável pórem não é recomendado 100%
  double altura = 1.66; //var altura = 1.66
  bool geek = true; //var geek = true;
  const String nome = 'Gustavo Milioni';
  final String apelido;
  apelido = 'Guzz';
  bool maiorDeIdade;
  int energia = 100;

  //Execução do programa

  //Método para verificação de Persona é maior de idade
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  //Método para dizer quantas voltas foram dadas
  for (int i = 0; i < 5; i++) {
    print('Concluí $i voltas');
  }

  //Exemplo de while para ser utilizado
  //while (energia > 0) {
  //  print('Mais uma Repetição $energia');
  //energia = energia - 10;
  //}
  //Método para Retirar a energia da Persona
  do {
    print('Mais uma repetição $energia');
    energia = energia - 6;
  } while (energia > 0);

  /*List dynamica*/
  List<dynamic> guzz = [idade, altura, geek, nome, apelido];
  //TODO: Coisas para fazer adicionar nomes por exemplos

  String frase = 'Eu sou ${guzz[3]} \n'
      'também conhecido pelo apelido de ${guzz[4]}.\n'
      'Eu me considero geek? ${guzz[2]}. \n'
      'Eu tenho ${guzz[1]} metros de altura e ${guzz[0]} anos de idade \n'
      'Eu sou maior de idade? ${maiorDeIdade}';

  print(frase);
}
