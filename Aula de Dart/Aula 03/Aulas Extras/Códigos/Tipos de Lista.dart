void main() {
  /** ======================== 01 SUBLIST ==============================**/
  print('SUBLIST I');
  List<String> list = ['ABCDEF', 'GHIJK', 'LMNO', 'PQR', 'ST', 'U'];

  // Pegando a partir do item 1 e indo até o fim
  List<String> sublist = list.sublist(1);
  print(sublist);

  // Pegando a partir do item 1 e terminando no 2 (Ele não inclui o terceiro apenas chega no seu 'limite')
  List<String> sublist02 = list.sublist(1, 3);
  print(sublist02);

  /** ======================== 02 FOR EACH ==============================**/
  print('FOR EACH');
  //Ele vai agir item por item.
  list.forEach((element) {
    print(element);
  });
  print('Acabou!');

  /** ======================== 03 CONTAINS ==============================**/
  print('CONTAINS');
  // Ferramenta para procurar item na lista
  String teste1 = 'B';
  String teste2 = 'Z';

  //Teste 1
  if (list.contains(teste1)) {
    print('Achou');
  } else {
    print('Não Achou');
  }

  //Teste 2
  if (list.contains(teste2)) {
    print('Achou');
  } else {
    print('Não Achou');
  }

  /** ======================== 04 REDUCE ==============================**/
  print('REDUCE');
  //Transformar todos os itens da lista e um objeto só
  String myname = list.reduce((value, element) {
    // value == valor anterior // element == valor que irá ficar
    return value + ' ' + element;
  });
  print(list);
  print(myname);

/** ======================== 05 WHERE ==============================**/
  print('WHERE');
//Como separar os itens da lista como uma condição
//Primeira forma de escrever
  Iterable<String> maior = list.where((element) => element.length > 3);
  print(maior);
//Segunda forma de escrever
  List<String> maior1 = list.where((element) => element.length > 3).toList();
  print(maior1);
}
