// Caso seja necessário criar mais parâmetros para adicionar outras frutas, seria necessário
// Copiar todo o escobo e colar, alterando nome das variáveis e ficando um processo muito longo
// então usamos as listas dinâmicas. Pórem ainda não é a solução veja:

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: cor);

  List<dynamic> fruta01 = [
    "Laranja",
    100.2,
    "Verde e Amarela",
    "Doce e cítrica",
    40
  ];
  List<dynamic> fruta02 = ["Uva", 40, "Roxo", "Doce", 40];

  // Para poucos itens maravilha e caso tenha mais e mais, preciso realizar o mesmo processo em todas?
  // Caso peguemos uma lista com base em um banco de dados e altere a posição.
  // Então a melhor forma de fazer isso é criar classes.
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
