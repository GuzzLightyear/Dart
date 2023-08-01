//Para trabalhar com heranças, você tem que escolher a superclasse
// nesse caso será o alimento

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura;

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxo", "Doce", 30);
  fruta01.estaMadura(30);
  fruta02.estaMadura(60);

  Legumes mandioca = Legumes("Macaxeira", 1200, "Marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarela", "Doce", 12);
  Nozes macadamia = Nozes("Macadâmia", 2, "Branco Amarelado", "Doce", 20,
      porcentagemDeOleoNatural: 35);
  Citricas limao = Citricas("Limão", 50, "Verde", "Azedo", 5, 9);

  macadamia.printAlimento();
  banana.printAlimento();
  mandioca.printAlimento();
  limao.printAlimento();
//posso usar os metodos da super classe nas sub classes
// pórem não consigo usar os metodos das subclasses em outras subclasses
  mandioca.cozinhar();
  limao.fazerSuco();
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome: nome, peso: peso, cor: cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    if (isMadura == true) {
      print(
          "A sua $nome foi colhida a $diasDesdeColheita dias, ela precisa de $diasParaMadura dias então esta Madura");
    } else {
      print(
          "A sua $nome foi colhida a $diasDesdeColheita dias, ela precisa de $diasParaMadura dias para estar madura");
    }
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento({required this.nome, required this.peso, required this.cor});

  void printAlimento() {
    print('Este(a) $nome pesa $peso grams e é $cor');
  }
}

//vem na subclasse e após o nome, colocar extends para falar que você vai puxar tudo que a superclasse tem
//nesse caso to falando que a classe legumes vai herdar tudo que a superclasse alimento tem.
//tudo deste parâmetros até mesmo ações como um void

class Legumes extends Alimento {
  bool? isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome: nome, peso: peso, cor: cor);
  //Como chamar os parâmetros da nossa super classe
  //Após extender a nossa classe
  //Chamamos o construtor e nele pedimos que seja colocado as váriaveis que desejamos e sua característica
  //(String, double, int...), após isso antes do ";"
  // nós adicionamos o ": super()" e dentro do () nós apontamos a sequência, olha eu quero que a posição um seja
  // o parâmetro tal da super classe, a segunda...
  // como foi colocado que era obrigado a referênciar na super classe, sou obrigado a referênciar quando for puxar
  // também, o required é meio que um guia, sem informar a direção antes ele não vai aceitar.

  void cozinhar() {
    if (isPrecisaCozinhar == true) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Nem precisa cozinhar!");
    }
  }
}

//citricas nesse caso vai ser uma subclasse da subclasse
// no caso ela será subclasse da fruta, funcionara da mesma forma
// vou extender e puxar as informações
// pórem eu se as informações que estiverem no construtor da fruta não for opcional
// eu tenho que passar tudo para citricas.
// ou seja se no construtor tiver algum item opcional eu posso escolher
// se coloco ou não no construtor da citrica.
// mas caso não tenha nenhum opcional eu tenho que passar todos os parâmetros de fruta para citrica.
class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.nivelAzedo,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe Refrigerante de $nome");
    } else {
      print("Não existe Refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(
      String nome, double peso, String cor, String sabor, int diasDesdeColheita,
      {required this.porcentagemDeOleoNatural})
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}
