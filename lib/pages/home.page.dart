import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:40),
            ),
            Container(
              child: Text("Menu"),
            ),
            Container(
              child: Text('O que é G6PD'),
            ),
            Container(
              child: Text('Lista de Restritos'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/logo.jpg"),
          ),
        ),

        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.freeimages.com/images/large-previews/75e/question-mark-icon-1444378.jpg"),
          ),
          title: Text("O que é G6PD?"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "A deficiência de desidrogenase de glicose-6-fosfato (G6PD) é um defeito enzimático ligado ao cromossomo X comum nos negros, que pode resultar em hemólise após doença aguda ou ingestão de fármacos oxidantes (incluindo salicilatos e sulfonamidas). "),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
