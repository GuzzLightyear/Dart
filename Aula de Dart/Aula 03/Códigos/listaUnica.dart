void main() {
  int idade = 26;
  double altura = 1.65;
  bool confirmacao = true;
  String nome = 'Gustavo Milioni';
  String apelido = 'Guzz';
  String frase = 'Eu sou $nome \n'
      'também conhecido pelo apelido de $apelido.\n'
      "Eu me considero geek? $confirmacao. \n"
      "Eu tenho $altura metros de altura e $idade anos de idade \n";
  print('$frase');
  String nome1 = 'André';
  String nome2 = 'Bruno';
  String nome3 = 'Caio';
  String nome4 = 'Daniel';
  String nome5 = 'Eduardo';
  String nome6 = 'Felipe';
  //(Vamos substituir isso por uma lista para caso venha haver mais nomes)

  List<String> listanome = [
    nome1,
    nome2,
    nome3,
    nome4,
    nome5,
    nome6
  ]; //Apenas string nesta lista se colocar número ele vai dar erro

  print(listanome[1]);
}
