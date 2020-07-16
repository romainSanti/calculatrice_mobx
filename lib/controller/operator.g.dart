// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Operator on _Operator, Store {
  final _$resultatAtom = Atom(name: '_Operator.resultat');

  @override
  int get resultat {
    _$resultatAtom.reportRead();
    return super.resultat;
  }

  @override
  set resultat(int value) {
    _$resultatAtom.reportWrite(value, super.resultat, () {
      super.resultat = value;
    });
  }

  final _$afficheAtom = Atom(name: '_Operator.affiche');

  @override
  String get affiche {
    _$afficheAtom.reportRead();
    return super.affiche;
  }

  @override
  set affiche(String value) {
    _$afficheAtom.reportWrite(value, super.affiche, () {
      super.affiche = value;
    });
  }

  final _$_OperatorActionController = ActionController(name: '_Operator');

  @override
  void ajoutChiffre(String x) {
    final _$actionInfo =
        _$_OperatorActionController.startAction(name: '_Operator.ajoutChiffre');
    try {
      return super.ajoutChiffre(x);
    } finally {
      _$_OperatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void additionner(int nb1, int nb2) {
    final _$actionInfo =
        _$_OperatorActionController.startAction(name: '_Operator.additionner');
    try {
      return super.additionner(nb1, nb2);
    } finally {
      _$_OperatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void soutraire(int nb1, int nb2) {
    final _$actionInfo =
        _$_OperatorActionController.startAction(name: '_Operator.soutraire');
    try {
      return super.soutraire(nb1, nb2);
    } finally {
      _$_OperatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void multiplier(int nombre1, int nombre2) {
    final _$actionInfo =
        _$_OperatorActionController.startAction(name: '_Operator.multiplier');
    try {
      return super.multiplier(nombre1, nombre2);
    } finally {
      _$_OperatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void diviser(int nombre1, int nombre2) {
    final _$actionInfo =
        _$_OperatorActionController.startAction(name: '_Operator.diviser');
    try {
      return super.diviser(nombre1, nombre2);
    } finally {
      _$_OperatorActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
resultat: ${resultat},
affiche: ${affiche}
    ''';
  }
}
