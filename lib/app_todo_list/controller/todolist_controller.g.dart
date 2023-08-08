// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todolist_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoListController on _TodoListControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_TodoListControllerBase.isFormValid'))
          .value;

  late final _$newTodoTitleAtom =
      Atom(name: '_TodoListControllerBase.newTodoTitle', context: context);

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  late final _$_TodoListControllerBaseActionController =
      ActionController(name: '_TodoListControllerBase', context: context);

  @override
  void setNewTodoTitle(String newtitle) {
    final _$actionInfo = _$_TodoListControllerBaseActionController.startAction(
        name: '_TodoListControllerBase.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(newtitle);
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$_TodoListControllerBaseActionController.startAction(
        name: '_TodoListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
isFormValid: ${isFormValid}
    ''';
  }
}
