void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  /// diasDesdeColheita == Argumento
  print(funcEstaMadura(20)); // 20 == Argumento
  print(funcMostrarParabens());
}

//parâmetro pertence a função que usamos na construção de função, argumento é quando passamos quando chamamos a função
funcEstaMadura(int dias) {
  /// o que esta dentro de () é o parâmetro.
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

funcMostrarParabens() {
  print('Sorria');
}
