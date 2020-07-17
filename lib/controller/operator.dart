import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'operator.g.dart';

class Operator = _Operator with _$Operator;

abstract class _Operator extends ChangeNotifier with Store {
  @observable
  int resultat = 0;

  @observable
  String affiche = "";

  String get getAffiche => affiche;

  set SetAffiche(String x) {
    affiche = "";
    notifyListeners();
  }

  @action
  void clear() {
    affiche = "";
    notifyListeners();
  }

  @action
  void ajoutChiffre(String x) {
    affiche += x;
    notifyListeners();
  }

  @action
  void additionner(int nb1, int nb2) {
    resultat = nb1 + nb2;
    notifyListeners();
  }

  @action
  void soutraire(int nb1,int nb2){
    resultat = nb1 - nb2;
    notifyListeners();
  }

  @action
  void multiplier(int nombre1, int nombre2){
    resultat = nombre1 * nombre2;
    notifyListeners();
  }

  @action
  void diviser(int nombre1, int nombre2){
    resultat = nombre1 ~/ nombre2;
    notifyListeners();
  }
}