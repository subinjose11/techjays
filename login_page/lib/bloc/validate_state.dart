part of 'validate_bloc.dart';

@freezed
class ValidateState with _$ValidateState {
  const factory ValidateState.initial() = Initial;
  const factory ValidateState.loginSucces(
    final String messsage,
  ) = LoginSucces;
  const factory ValidateState.loginFailed(
    final String error,
  ) = LoginFailed;
}
