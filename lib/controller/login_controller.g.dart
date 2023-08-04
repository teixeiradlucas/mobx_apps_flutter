// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool>? _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_LoginControllerBase.passwordValid'))
          .value;
  Computed<bool>? _$loginValidComputed;

  @override
  bool get loginValid =>
      (_$loginValidComputed ??= Computed<bool>(() => super.loginValid,
              name: '_LoginControllerBase.loginValid'))
          .value;
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_LoginControllerBase.isValid'))
      .value;

  late final _$loginAtom =
      Atom(name: '_LoginControllerBase.login', context: context);

  @override
  String get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginControllerBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase', context: context);

  @override
  void getlogin(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.getlogin');
    try {
      return super.getlogin(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getPassword(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.getPassword');
    try {
      return super.getPassword(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
password: ${password},
passwordValid: ${passwordValid},
loginValid: ${loginValid},
isValid: ${isValid}
    ''';
  }
}
