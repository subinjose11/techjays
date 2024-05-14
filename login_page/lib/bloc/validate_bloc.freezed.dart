// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidateEvent {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        validateLoginRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? validateLoginRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? validateLoginRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateLoginRequest value) validateLoginRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateLoginRequest value)? validateLoginRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateLoginRequest value)? validateLoginRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateEventCopyWith<ValidateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateEventCopyWith<$Res> {
  factory $ValidateEventCopyWith(
          ValidateEvent value, $Res Function(ValidateEvent) then) =
      _$ValidateEventCopyWithImpl<$Res, ValidateEvent>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class _$ValidateEventCopyWithImpl<$Res, $Val extends ValidateEvent>
    implements $ValidateEventCopyWith<$Res> {
  _$ValidateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateLoginRequestImplCopyWith<$Res>
    implements $ValidateEventCopyWith<$Res> {
  factory _$$ValidateLoginRequestImplCopyWith(_$ValidateLoginRequestImpl value,
          $Res Function(_$ValidateLoginRequestImpl) then) =
      __$$ValidateLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$ValidateLoginRequestImplCopyWithImpl<$Res>
    extends _$ValidateEventCopyWithImpl<$Res, _$ValidateLoginRequestImpl>
    implements _$$ValidateLoginRequestImplCopyWith<$Res> {
  __$$ValidateLoginRequestImplCopyWithImpl(_$ValidateLoginRequestImpl _value,
      $Res Function(_$ValidateLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$ValidateLoginRequestImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateLoginRequestImpl
    with DiagnosticableTreeMixin
    implements ValidateLoginRequest {
  const _$ValidateLoginRequestImpl(this.userName, this.password);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidateEvent.validateLoginRequest(userName: $userName, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidateEvent.validateLoginRequest'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoginRequestImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLoginRequestImplCopyWith<_$ValidateLoginRequestImpl>
      get copyWith =>
          __$$ValidateLoginRequestImplCopyWithImpl<_$ValidateLoginRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password)
        validateLoginRequest,
  }) {
    return validateLoginRequest(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? validateLoginRequest,
  }) {
    return validateLoginRequest?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? validateLoginRequest,
    required TResult orElse(),
  }) {
    if (validateLoginRequest != null) {
      return validateLoginRequest(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateLoginRequest value) validateLoginRequest,
  }) {
    return validateLoginRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateLoginRequest value)? validateLoginRequest,
  }) {
    return validateLoginRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateLoginRequest value)? validateLoginRequest,
    required TResult orElse(),
  }) {
    if (validateLoginRequest != null) {
      return validateLoginRequest(this);
    }
    return orElse();
  }
}

abstract class ValidateLoginRequest implements ValidateEvent {
  const factory ValidateLoginRequest(
          final String userName, final String password) =
      _$ValidateLoginRequestImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ValidateLoginRequestImplCopyWith<_$ValidateLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String messsage) loginSucces,
    required TResult Function(String error) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String messsage)? loginSucces,
    TResult? Function(String error)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String messsage)? loginSucces,
    TResult Function(String error)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginSucces value) loginSucces,
    required TResult Function(LoginFailed value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginSucces value)? loginSucces,
    TResult? Function(LoginFailed value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginSucces value)? loginSucces,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateStateCopyWith<$Res> {
  factory $ValidateStateCopyWith(
          ValidateState value, $Res Function(ValidateState) then) =
      _$ValidateStateCopyWithImpl<$Res, ValidateState>;
}

/// @nodoc
class _$ValidateStateCopyWithImpl<$Res, $Val extends ValidateState>
    implements $ValidateStateCopyWith<$Res> {
  _$ValidateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ValidateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidateState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ValidateState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String messsage) loginSucces,
    required TResult Function(String error) loginFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String messsage)? loginSucces,
    TResult? Function(String error)? loginFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String messsage)? loginSucces,
    TResult Function(String error)? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginSucces value) loginSucces,
    required TResult Function(LoginFailed value) loginFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginSucces value)? loginSucces,
    TResult? Function(LoginFailed value)? loginFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginSucces value)? loginSucces,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ValidateState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginSuccesImplCopyWith<$Res> {
  factory _$$LoginSuccesImplCopyWith(
          _$LoginSuccesImpl value, $Res Function(_$LoginSuccesImpl) then) =
      __$$LoginSuccesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messsage});
}

/// @nodoc
class __$$LoginSuccesImplCopyWithImpl<$Res>
    extends _$ValidateStateCopyWithImpl<$Res, _$LoginSuccesImpl>
    implements _$$LoginSuccesImplCopyWith<$Res> {
  __$$LoginSuccesImplCopyWithImpl(
      _$LoginSuccesImpl _value, $Res Function(_$LoginSuccesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messsage = null,
  }) {
    return _then(_$LoginSuccesImpl(
      null == messsage
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSuccesImpl with DiagnosticableTreeMixin implements LoginSucces {
  const _$LoginSuccesImpl(this.messsage);

  @override
  final String messsage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidateState.loginSucces(messsage: $messsage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidateState.loginSucces'))
      ..add(DiagnosticsProperty('messsage', messsage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccesImpl &&
            (identical(other.messsage, messsage) ||
                other.messsage == messsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccesImplCopyWith<_$LoginSuccesImpl> get copyWith =>
      __$$LoginSuccesImplCopyWithImpl<_$LoginSuccesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String messsage) loginSucces,
    required TResult Function(String error) loginFailed,
  }) {
    return loginSucces(messsage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String messsage)? loginSucces,
    TResult? Function(String error)? loginFailed,
  }) {
    return loginSucces?.call(messsage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String messsage)? loginSucces,
    TResult Function(String error)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSucces != null) {
      return loginSucces(messsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginSucces value) loginSucces,
    required TResult Function(LoginFailed value) loginFailed,
  }) {
    return loginSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginSucces value)? loginSucces,
    TResult? Function(LoginFailed value)? loginFailed,
  }) {
    return loginSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginSucces value)? loginSucces,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginSucces != null) {
      return loginSucces(this);
    }
    return orElse();
  }
}

abstract class LoginSucces implements ValidateState {
  const factory LoginSucces(final String messsage) = _$LoginSuccesImpl;

  String get messsage;
  @JsonKey(ignore: true)
  _$$LoginSuccesImplCopyWith<_$LoginSuccesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailedImplCopyWith<$Res> {
  factory _$$LoginFailedImplCopyWith(
          _$LoginFailedImpl value, $Res Function(_$LoginFailedImpl) then) =
      __$$LoginFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginFailedImplCopyWithImpl<$Res>
    extends _$ValidateStateCopyWithImpl<$Res, _$LoginFailedImpl>
    implements _$$LoginFailedImplCopyWith<$Res> {
  __$$LoginFailedImplCopyWithImpl(
      _$LoginFailedImpl _value, $Res Function(_$LoginFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailedImpl with DiagnosticableTreeMixin implements LoginFailed {
  const _$LoginFailedImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidateState.loginFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidateState.loginFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      __$$LoginFailedImplCopyWithImpl<_$LoginFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String messsage) loginSucces,
    required TResult Function(String error) loginFailed,
  }) {
    return loginFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String messsage)? loginSucces,
    TResult? Function(String error)? loginFailed,
  }) {
    return loginFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String messsage)? loginSucces,
    TResult Function(String error)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginSucces value) loginSucces,
    required TResult Function(LoginFailed value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoginSucces value)? loginSucces,
    TResult? Function(LoginFailed value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginSucces value)? loginSucces,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class LoginFailed implements ValidateState {
  const factory LoginFailed(final String error) = _$LoginFailedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
