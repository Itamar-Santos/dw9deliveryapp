import 'dart:developer';

import 'package:aberturadartweek/app/core/exceptions/repository_exceptions.dart';
import 'package:aberturadartweek/app/core/rest_client/custom_dio.dart';
import 'package:aberturadartweek/app/models/auth_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';

import './auth_repository.dart';
class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;
  AuthRepositoryImpl({
    required this.dio,
  });
  @override
  Future<AuthModel> login(String email, String password) async {
    try {
  final result = await dio.unauth().post('/auth', data: {
    'email': email,
    'password': password,
  });
  return AuthModel.fromMap(result.data);
} on DioError catch (e, s) {
  if(e.response?.statusCode == 403){
    
    
    log('Permissão Negada', error: e, stackTrace: s);
    throw UnauthorizedException();
  }
  log('Erro ao realizar Login', error: e, stackTrace: s);
  throw RepositoryExceptions(message: 'Erro ao realizar Login');
}
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try{
    await dio.unauth().post('/users', data: {
'name': name,
'email': email,
'password': password,
    });
    } on DioError catch (e, s){
    log('Erro ao  registrar usuário', error: e, stackTrace: s);
    throw RepositoryExceptions(message: 'Erro ao registrar usuário');
    }
  }
}
  