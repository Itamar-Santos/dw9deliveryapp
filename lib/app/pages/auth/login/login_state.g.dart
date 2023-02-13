// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension LoginsStatusMatch on LoginsStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() login,
      required T Function() sucess,
      required T Function() loginError,
      required T Function() error}) {
    final v = this;
    if (v == LoginsStatus.initial) {
      return initial();
    }

    if (v == LoginsStatus.login) {
      return login();
    }

    if (v == LoginsStatus.sucess) {
      return sucess();
    }

    if (v == LoginsStatus.loginError) {
      return loginError();
    }

    if (v == LoginsStatus.error) {
      return error();
    }

    throw Exception('LoginsStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? login,
      T Function()? sucess,
      T Function()? loginError,
      T Function()? error}) {
    final v = this;
    if (v == LoginsStatus.initial && initial != null) {
      return initial();
    }

    if (v == LoginsStatus.login && login != null) {
      return login();
    }

    if (v == LoginsStatus.sucess && sucess != null) {
      return sucess();
    }

    if (v == LoginsStatus.loginError && loginError != null) {
      return loginError();
    }

    if (v == LoginsStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
