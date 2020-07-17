import 'package:calculmobx/controller/operator.dart';
import 'package:calculmobx/widget/affichage.dart';
import 'package:calculmobx/widget/clavier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Operator>.value(
          value: Operator(),
        )
      ],
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Observer(
                builder: (_) => Affichage(),
              ),
              Clavier(),
            ],
          ),
        ),
      ),
    );
  }
}
