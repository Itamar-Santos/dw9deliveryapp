
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'login_state.g.dart';

@match
enum LoginsStatus{
  initial,
  login,
  sucess,
  loginError,
  error
}

class LoginState extends Equatable {
  
  final LoginsStatus status;
  final String? errorMessage;
  const LoginState({
    required this.status,
    this.errorMessage,
  });
  const LoginState.initial() : status = LoginsStatus.initial,
  errorMessage = null;
  
  
  @override
 
  List<Object?> get props => [status, errorMessage];
  

  LoginState copyWith({
    LoginsStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
