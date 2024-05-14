part of 'validate_bloc.dart';

@freezed
class ValidateEvent with _$ValidateEvent {
  const factory ValidateEvent.validateLoginRequest(
    final String userName,
    final String password,
  ) = ValidateLoginRequest;
}
