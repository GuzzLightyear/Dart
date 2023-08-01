// modularizar objetos complexos.
void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: cor);

  Fruta laranja = Fruta(
      nome: nome,
      peso: peso,
      cor: cor,
      sabor: sabor,
      diasDesdeColheita: diasDesdeColheita);
}

//classes se iniciam em letra maíuscula.
//para criar a classe escreve class e abre e fecha chaves apos nomea-la
//utilizamos o construtor para definir o valor das váriaveis que criaremos.
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool?
      isMadura; // lembrete a interrogação é para afirmar que pode receber valor NULO apenas do true or false do bool
  Fruta(
      {required this.nome,
      required this.peso,
      required this.cor,
      required this.sabor,
      required this.diasDesdeColheita});
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
