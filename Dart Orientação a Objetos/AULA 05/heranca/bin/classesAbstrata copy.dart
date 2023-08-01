import 'dart:ffi';

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
//implements bolo, acontece para implementarmos uma classe dentro de outra classe
//diferente de extends que utiliza a mesma informação da classe neste caso Alimento
//implements puxa a ação e podemos usar como quisermos.
class Legumes extends Alimento implements Bolo{ 
  bool? isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome: nome, peso: peso, cor: cor);

  void cozinhar() {
    if (isPrecisaCozinhar == true) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Nem precisa cozinhar!");
    }
  }
  @override
  void assar(){
    // TODO: implement assar
    //colocar para assar
  }
  @override
  void fazerMassa(){
    // TODO: implement fazerMassa
    // bater os ingredientes
  }
  @override
  void separarIngredientes(){
    //TODO: implement separarIngredientes
    //Ver se o alimento esta cozido ou cru
  }
}

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

abstract class Bolo {
  //(Colocamos abstract antes de classe, para falar que essa classe é abstrata)
  //Separo os ingredientes
  void separarIngredientes();
  //Faço a massa
  void fazerMassa();
  //Coloco para assar
  void assar();
}
