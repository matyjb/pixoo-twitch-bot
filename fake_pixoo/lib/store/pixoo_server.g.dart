// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixoo_server.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PixooServer on _PixooServerBase, Store {
  Computed<String?>? _$listeningOnComputed;

  @override
  String? get listeningOn =>
      (_$listeningOnComputed ??= Computed<String?>(() => super.listeningOn,
              name: '_PixooServerBase.listeningOn'))
          .value;

  late final _$_serverAtom =
      Atom(name: '_PixooServerBase._server', context: context);

  @override
  HttpServer? get _server {
    _$_serverAtom.reportRead();
    return super._server;
  }

  @override
  set _server(HttpServer? value) {
    _$_serverAtom.reportWrite(value, super._server, () {
      super._server = value;
    });
  }

  late final _$startAsyncAction =
      AsyncAction('_PixooServerBase.start', context: context);

  @override
  Future<void> start() {
    return _$startAsyncAction.run(() => super.start());
  }

  @override
  String toString() {
    return '''
listeningOn: ${listeningOn}
    ''';
  }
}
