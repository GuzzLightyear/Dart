//após criar o construtor chamamos na nossa função main, criando uma variavel novamento
// falando que ela será igual a nossa classe, e falando qual será as informações passadas para ele conforme a sequência.
// no caso a primeira informação será nome, peso ... ae posso digitar eu falando para ele como
// exemplo da fruta02 ou pegando informações
// que já existem no meu código como exemplificado na fruta 01
// diferente da lista a classe garante que eu passe do jeito que desejo não 100%, mas evitando colocar
// um double no lugar de um int ou String e assim por indiante.
// O bom da classe que posso usar um item apenas do que pedi colocando a várivael da classe que desejo
// e chamando o que preciso no caso da classe fruta chamei a fruta01 e pedi seu peso
// depois chamei a fruta02 e chamei seu nome, trabalhando individualmente com os itens da minha classe.
// Meio que criamos uma lista dentro da lista, chamei da lista de Frutas, coloquei laranja exemplo
// e Dentro dela eu coloquei todas as informações dela, onde posso trabalhar individualmente com cada item e informação
void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura;

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxo", "Doce", 30);

  print(fruta01.peso);
  print(fruta01);
  print(fruta02.nome);
  print(fruta02);
  //quando tentamos utilizar o item "completo" por exemplo ele fala que precisamos dar uma instacia o que procurar.
  // dentro de uma classe posso ter diversos construtores, exemplo
  // um obrigando a referênciar e outro que não é necessário para caso alguém que venha a usar seu código
  // possa usar da forma que desejar.
}

// Criando com construtor agora.
// Dentro da classe criada, colocamos o nome da classe e após isso o ().
// Mostrando para o dart que queremos iniciar nosso contrutor para receber informações
// Das variáveis
// Dentro do construtor colocamos a sequência de informação que desejamos receber, com a palavra this.
// é referênciando aonde vou colocar a primeira informação que chegar, a segunda e assim por endiante.
// no caso falo que quero primeiro nome, peso...
// caso eu queria referênciar uso {required this. ...}, mas não é necessário.
// caso tenha uma opção que opcional eu apenas coloco {}this
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});
}
