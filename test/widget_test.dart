void main() {
  final nama = 'dzulfikri';
  final first = nama.substring(0, 1);
  List items = [
    'Muhammad',
    'Dzul',
    'Fikri',
    'Fikri',
    'Fikri',
    'Khoiruddin',
    'Agus',
  ];
  List firstAbjad = [];
  for (var i = 0; i < items.length; i++) {
    final alphabet = items[i].toString().substring(0, 1);
    firstAbjad.add(alphabet);
  }
  final filterSameAlphabet = firstAbjad.toSet().toList();
  filterSameAlphabet.sort((a, b) =>
      a.toString().toLowerCase().compareTo(b.toString().toLowerCase()));
  print(filterSameAlphabet);
  final sort = items
      .where((element) => element
          .toString()
          .toLowerCase()
          .substring(0, 1)
          .contains(filterSameAlphabet[2].toString().toLowerCase()))
      .toList();
  print(sort);
}

class Identitas {
  String nama;
  int umur;
  Identitas(this.nama, this.umur);
}
