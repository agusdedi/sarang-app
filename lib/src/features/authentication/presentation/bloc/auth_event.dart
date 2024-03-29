part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterAuthEvent extends AuthEvent {
  final UserAccount userAccount;
  final bool isRegister;

  RegisterAuthEvent({
    required this.userAccount,
    required this.isRegister,
  });
}

