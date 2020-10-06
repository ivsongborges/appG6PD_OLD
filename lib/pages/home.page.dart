import 'package:flutter/material.dart';
import 'package:flutter_app/pages/g6pd.page.dart';
import 'package:flutter_app/pages/quiz.page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('G6PD'),
        ),
      ),
          body: ListView(
          children: <Widget>[

            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Quiz'),
              subtitle: Text('Teste seus conhecimentos!'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
            ),



            ListTile(
              leading: Icon(Icons.details),
              title: Text('O que é Deficiência de G6PD?'),
              //subtitle: Text('è uma doença...'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => G6pdPage(),
                  )
                );
              }
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

