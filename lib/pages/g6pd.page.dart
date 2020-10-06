import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class G6pdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('G6PD???'),
        ),
      ),

      body: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          color: Colors.white,
          child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/logo.jpg"),
                ),
           ListTile(
                  title: Text('teste'),
                  subtitle: Text('é uma condição genética'),
                ),
            ListTile(
              //alignment: Alignment.center,
              contentPadding: EdgeInsets.only(top: 10),
                  title: Text('teste'),
                  subtitle: Text('é uma condição genética There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('1testt'),
                ),
        ]

      ),
    ),
    );
  }
}