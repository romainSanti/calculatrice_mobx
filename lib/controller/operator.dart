import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'operator.g.dart';

class Operator = _Operator with _$Operator;

abstract class _Operator with Store{
  @observable
  int resultat = 0;

  @observable
  String affiche = "";

  @action
  void ajoutChiffre(String x){
    affiche += x;
  }

  @action
  void additionner(int nb1,int nb2){
    resultat = nb1 +nb2;
  }

  @action
  void soutraire(int nb1,int nb2){
    resultat = nb1 - nb2;
  }

  @action
  void multiplier(int nombre1, int nombre2){
    resultat = nombre1 * nombre2;
  }

  @action
  void diviser(int nombre1, int nombre2){
      resultat = nombre1 ~/ nombre2;
  }
}