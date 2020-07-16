import 'package:flutter/material.dart';

class Clavier extends StatelessWidget {
  Function appuieTouche;
  Function appuieOperator;
  Function appuieEgal;
  Function appuieClear;

  Clavier(
      {this.appuieTouche,
      this.appuieOperator,
      this.appuieEgal,
      this.appuieClear});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(top: 100),
      child: GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        children: <Widget>[
          Container(
            child: RaisedButton(
              child: Text("1"),
              onPressed: () {
                appuieTouche(1);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("2"),
              onPressed: () {
                appuieTouche(2);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("3"),
              onPressed: () {
                appuieTouche(3);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("+"),
              onPressed: () {
                appuieOperator("+");
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("4"),
              onPressed: () {
                appuieTouche(4);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("5"),
              onPressed: () {
                appuieTouche(5);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("6"),
              onPressed: () {
                appuieTouche(6);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("-"),
              onPressed: () {
                appuieOperator("-");
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("7"),
              onPressed: () {
                appuieTouche(7);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("8"),
              onPressed: () {
                appuieTouche(8);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("9"),
              onPressed: () {
                appuieTouche(9);
              },
            ),
          ),
          Container(
            child: RaisedButton(child: Text("="), onPressed: appuieEgal),
          ),
          Container(
            child: RaisedButton(
              child: Text("*"),
              onPressed: () {
                appuieOperator("*");
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("/"),
              onPressed: () {
                appuieOperator("/");
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("0"),
              onPressed: () {
                appuieTouche(0);
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("clear"),
              onPressed: appuieClear,
            ),
          ),
        ],
      ),
    );
  }
}
