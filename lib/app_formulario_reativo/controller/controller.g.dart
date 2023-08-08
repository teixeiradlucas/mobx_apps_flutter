// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
  Computed<bool>? _$validateNameComputed;

  @override
  bool get validateName =>
      (_$validateNameComputed ??= Computed<bool>(() => super.validateName,
              name: '_ControllerBase.validateName'))
          .value;
  Computed<bool>? _$validateEmailComputed;

  @override
  bool get validateEmail =>
      (_$validateEmailComputed ??= Computed<bool>(() => super.validateEmail,
              name: '_ControllerBase.validateEmail'))
          .value;
  Computed<bool>? _$validateCpfComputed;

  @override
  bool get validateCpf =>
      (_$validateCpfComputed ??= Computed<bool>(() => super.validateCpf,
              name: '_ControllerBase.validateCpf'))
          .value;
  Computed<bool>? _$validateFormComputed;

  @override
  bool get validateForm =>
      (_$validateFormComputed ??= Computed<bool>(() => super.validateForm,
              name: '_ControllerBase.validateForm'))
          .value;

  @override
  String toString() {
    return '''
validateName: ${validateName},
validateEmail: ${validateEmail},
validateCpf: ${validateCpf},
validateForm: ${validateForm}
    ''';
  }
}
