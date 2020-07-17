import 'package:calculmobx/controller/operator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Clavier extends StatelessWidget {
  var operateur = "";
  var nombre1 = 0;
  var nombre2 = 0;

  @override
  Widget build(BuildContext context) {
    final Operator controller2 = Provider.of<Operator>(context);

    void appuieTouche(int chiffre) {
      controller2.ajoutChiffre(chiffre.toString());
      print(controller2.affiche);
    }

    void appuieOperator(String operateur) {
      this.operateur = operateur;
      if (controller2.affiche.isNotEmpty) {
        nombre1 = int.parse(controller2.affiche);
      }
      controller2.affiche = "";
    }

    void appuieEgal() {
      if (controller2.affiche.isNotEmpty) {
        nombre2 = int.parse(controller2.affiche);
      }
      switch (operateur) {
        case "+":
          {
            controller2.additionner(nombre1, nombre2);
          }
          break;
        case "-":
          {
            controller2.soutraire(nombre1, nombre2);
          }
          break;
        case "*":
          {
            controller2.multiplier(nombre1, nombre2);
          }
          break;
        case "/":
          {
            controller2.diviser(nombre1, nombre2);
          }
          break;
      }
      controller2.affiche = controller2.resultat.toString();
    }

    void clear() {
      nombre1 = 0;
      nombre2 = 0;
      controller2.clear();
    }

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
              onPressed: clear,
            ),
          ),
        ],
      ),
    );
  }
}
