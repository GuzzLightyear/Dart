//Método são iguais as funções pórem dentro das classes

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
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    if (isMadura == true) {
      print(
          "A sua $nome foi colhida a $diasDesdeColheita dias, ela precisa de $diasParaMadura dias então esta Madura");
    } else {
      print(
          "A sua $nome foi colhida a $diasDesdeColheita dias, ela precisa de $diasParaMadura dias para estar madura");
    }
  }
}
