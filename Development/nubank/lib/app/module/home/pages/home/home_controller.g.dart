// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageController on _HomePageControllerBase, Store {
  final _$loadingAtom = Atom(name: '_HomePageControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$userDataAtom = Atom(name: '_HomePageControllerBase.userData');

  @override
  Usuario get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(Usuario value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  final _$accountOptionsAtom =
      Atom(name: '_HomePageControllerBase.accountOptions');

  @override
  List<AccountOptions> get accountOptions {
    _$accountOptionsAtom.reportRead();
    return super.accountOptions;
  }

  @override
  set accountOptions(List<AccountOptions> value) {
    _$accountOptionsAtom.reportWrite(value, super.accountOptions, () {
      super.accountOptions = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_HomePageControllerBase.init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
userData: ${userData},
accountOptions: ${accountOptions}
    ''';
  }
}
