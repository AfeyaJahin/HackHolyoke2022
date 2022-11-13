import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<InitializeEvent>(_onInitializeEvent);
    on<LoginNavEvent>(_onLoginNavEvent);
    on<RegisterNavEvent>(_onRegisterNavEvent);
    on<LoginSuccessEvent>(_onLoginSuccessEvent);
  }

  FutureOr<void> _onInitializeEvent(
    InitializeEvent event,
    Emitter<LoginState> emit,
  ) {
    // TODO: Firebase Initialization
    emit(const LoggedOut());
  }

  FutureOr<void> _onLoginNavEvent(
    LoginNavEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(const LoggingIn());
  }

  FutureOr<void> _onRegisterNavEvent(
    RegisterNavEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(const Registering());
  }

  FutureOr<void> _onLoginSuccessEvent(
    LoginSuccessEvent event,
    Emitter<LoginState> emit,
  ) {
    emit(const LoggedIn());
  }
}
