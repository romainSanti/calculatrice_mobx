import 'package:calculmobx/controller/operator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Affichage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Operator controller = Provider.of<Operator>(context);
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20),
      child: Card(
        elevation: 50,
        child: Center(
          child: Text(
            controller.getAffiche.toString(),
            style: TextStyle(fontSize: 45),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
