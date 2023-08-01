//Herança:
//Nesse código tem apenas Frutas
//E se precisar fazer outros alimentos
// então criamos mais classes como neste exemplo pórem se perceber repetimos MUITO parâmetros desnecessariamente
// tem nome peso cor em todas as classes práticamente
// caso precise alterar a nomeclatura por algum motivo, tem que realizar em todos.
// MANUNTEÇÃO DIFICIL!!!!!!!!!!!!!!!
// Então existe as heranças onde podemos ter uma classe que divide parâmetros e metodos para as outras.
// superclasse (tem todas as informações)
// subclasses (herda todas ou algumas informação da superclasse e adiciona o necessário).

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

class alimento{
  String nome;
  double peso;
  String cor;
  alimento({required this.nome, required this.peso, required this.cor});
}

class legumes{
  String nome;
  double peso;
  String cor;
  bool? isPrecisaCozinhar;
  legumes({required this.nome, required this.peso, required this.cor, this.isPrecisaCozinhar});
}

class citricas{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  citricas({required this.nome, required this.peso, required this.cor, required this.nivelAzedo,required this.diasDesdeColheita,
      required this.isMadura});
}

class nozes{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemDeOleoNatural;

  nozes({required this.nome, required this.peso, required this.cor, required this.porcentagemDeOleoNatural,required this.diasDesdeColheita,
      required this.isMadura});
}