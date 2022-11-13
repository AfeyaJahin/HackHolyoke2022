part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

/// {@template custom_login_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomLoginEvent extends LoginEvent {}

class InitializeEvent extends LoginEvent {
  const InitializeEvent();
}

class LoginNavEvent extends LoginEvent {
  const LoginNavEvent();
}

class RegisterNavEvent extends LoginEvent {
  const RegisterNavEvent();
}

class LoginSuccessEvent extends LoginEvent {
  const LoginSuccessEvent();
}
