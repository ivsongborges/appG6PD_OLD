import 'package:flutter/material.dart';
import 'package:flutter_app/pages/quiz.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('G6PD'),
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
      body: ListView(
          children: <Widget>[
            Container(
              height: 25,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(),
                    ),
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(
                  Icons.question_answer
              ),
              title: Text('Quiz'),
            ),



            ListTile(
              leading: Icon(Icons.details),
              title: Text('Oq ue é G6PD?'),
              subtitle: Text('è uma doença...'),
            )
          ]
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'G6PD - Tudo Sobre a deficiência de G6PD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Quiz'),
              //onPressed: () => {},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

