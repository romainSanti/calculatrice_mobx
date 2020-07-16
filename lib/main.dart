import 'package:calculmobx/controller/operator.dart';
import 'package:calculmobx/widget/affichage.dart';
import 'package:calculmobx/widget/clavier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Operator controller = Operator();

  void appuieTouche(int chiffre) {
    controller.ajoutChiffre(chiffre.toString());
  }

  var operateur = "";
  var nombre1 = 0;
  var nombre2 = 0;

  void appuieOperateur(String operateur) {
    this.operateur = operateur;
    if (controller.affiche.isNotEmpty) {
      nombre1 = int.parse(controller.affiche);
    }
    controller.affiche = "";
  }

  void appuieEgal() {
    if (controller.affiche.isNotEmpty) {
      nombre2 = int.parse(controller.affiche);
    }
    switch (operateur) {
      case "+":
        {
          controller.additionner(nombre1, nombre2);
        }
        break;
      case "-":
        {
          controller.soutraire(nombre1, nombre2);
        }
        break;
      case "*":
        {
          controller.multiplier(nombre1, nombre2);
        }
        break;
      case "/":
        {
          controller.diviser(nombre1, nombre2);
        }
        break;
    }
    controller.affiche = controller.resultat.toString();
  }

  void appuieClear() {
    nombre1 = 0;
    nombre2 = 0;
    controller.affiche = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Observer(
              builder: (_) => Affichage(controller.affiche),
            ),
            Clavier(
              appuieTouche: appuieTouche,
              appuieOperator: appuieOperateur,
              appuieEgal: appuieEgal,
              appuieClear: appuieClear,
            ),
          ],
        ),
      ),
    );
  }
}
