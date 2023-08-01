void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  /// coloquei isMadura recebendo a função e dando para ele o paramêtro que desejei que era os diasDesteColheita

  print(isMadura);
  print(funcEstaMadura(20));
  print(funcMostrarParabens());
}

bool funcEstaMadura(int dias) {
  ///Minha função e do tipo bool, que ira retornar true or false, mas que esta recebendo um valor inteiro que no caso será dias.
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

funcMostrarParabens() {
  print('Sorria');
}
