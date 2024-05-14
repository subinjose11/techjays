import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'validate_event.dart';
part 'validate_state.dart';
part 'validate_bloc.freezed.dart';

class ValidateBloc extends Bloc<ValidateEvent, ValidateState> {
  ValidateBloc() : super(const ValidateState.initial()) {
    on<ValidateLoginRequest>((event, emit) {
      final userName = event.userName;
      final password = event.password;
      if (userName == "admin" && password == "123") {
        emit(const LoginSucces("Login Succes"));
        return;
      } else {
        emit(const LoginFailed("Username and Password not matching"));
        return;
      }
    });
  }
}
