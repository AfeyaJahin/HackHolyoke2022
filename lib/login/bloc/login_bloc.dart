import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<InitializeEvent>(_onInitializeEvent);
  }

  FutureOr<void> _onInitializeEvent(
    InitializeEvent event,
    Emitter<LoginState> emit,
  ) {
    // TODO: Firebase Initialization
    emit(const LoggedOut());
  }
}
