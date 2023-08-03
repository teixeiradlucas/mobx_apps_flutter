// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TitleController on _TitleControllerBase, Store {
  late final _$nomeAtom =
      Atom(name: '_TitleControllerBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$sobrenomeAtom =
      Atom(name: '_TitleControllerBase.sobrenome', context: context);

  @override
  String get sobrenome {
    _$sobrenomeAtom.reportRead();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.reportWrite(value, super.sobrenome, () {
      super.sobrenome = value;
    });
  }

  late final _$_TitleControllerBaseActionController =
      ActionController(name: '_TitleControllerBase', context: context);

  @override
  void novoNome(String value) {
    final _$actionInfo = _$_TitleControllerBaseActionController.startAction(
        name: '_TitleControllerBase.novoNome');
    try {
      return super.novoNome(value);
    } finally {
      _$_TitleControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void novoSobrenome(String value) {
    final _$actionInfo = _$_TitleControllerBaseActionController.startAction(
        name: '_TitleControllerBase.novoSobrenome');
    try {
      return super.novoSobrenome(value);
    } finally {
      _$_TitleControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_TitleControllerBaseActionController.startAction(
        name: '_TitleControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_TitleControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
sobrenome: ${sobrenome}
    ''';
  }
}
