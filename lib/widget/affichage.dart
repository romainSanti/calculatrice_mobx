import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Affichage extends StatelessWidget {
  String texte;

  Affichage(this.texte);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Card(
          elevation: 50,
          child: Center(
            child: Text(
              texte.toString(),
              style: TextStyle(fontSize: 45),
              textAlign: TextAlign.center,
            ),
          ),
        ),
    );
  }
}
