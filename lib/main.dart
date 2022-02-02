import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listNama = [
      'Muhammad',
      'Dzul',
      'Fikri',
      'Fikri',
      'Fikri',
      'Khoiruddin',
      'Agus',
    ];
    List firstAbjad = [];
    for (var i = 0; i < listNama.length; i++) {
      final alphabet = listNama[i].toString().substring(0, 1);
      firstAbjad.add(alphabet);
    }
    final filterSameAlphabet = firstAbjad.toSet().toList();
    filterSameAlphabet.sort((a, b) =>
        a.toString().toLowerCase().compareTo(b.toString().toLowerCase()));
    print(filterSameAlphabet);
    print(listNama.where((element) => element
        .toString()
        .toLowerCase()
        .substring(0, 1)
        .contains(filterSameAlphabet[0].toString().toLowerCase())));
    return Scaffold(
      body: ListView.builder(
        itemCount: filterSameAlphabet.length,
        itemBuilder: (BuildContext context, int index) {
          final items = listNama
              .where(
                (element) => element
                    .toString()
                    .toLowerCase()
                    .substring(0, 1)
                    .contains(
                        filterSameAlphabet[index].toString().toLowerCase()),
              )
              .toList();
          return Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text('${filterSameAlphabet[index]}'),
              ),
              Container(
                // height: 50,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      title: Text('${items[index].toString()}'),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
