// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'debt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DebtStateTearOff {
  const _$DebtStateTearOff();

// ignore: unused_element
  _InitialDebtState initial() {
    return const _InitialDebtState();
  }

// ignore: unused_element
  _LoadingDebtState loading() {
    return const _LoadingDebtState();
  }

// ignore: unused_element
  _DataDebtState data({UserDebt userDebt, @required bool authUser}) {
    return _DataDebtState(
      userDebt: userDebt,
      authUser: authUser,
    );
  }

// ignore: unused_element
  _SuccesPayDebtState succesPay({@required String message}) {
    return _SuccesPayDebtState(
      message: message,
    );
  }

// ignore: unused_element
  _ErrorDebtState error({@required String message}) {
    return _ErrorDebtState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DebtState = _$DebtStateTearOff();

/// @nodoc
mixin _$DebtState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DebtStateCopyWith<$Res> {
  factory $DebtStateCopyWith(DebtState value, $Res Function(DebtState) then) =
      _$DebtStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DebtStateCopyWithImpl<$Res> implements $DebtStateCopyWith<$Res> {
  _$DebtStateCopyWithImpl(this._value, this._then);

  final DebtState _value;
  // ignore: unused_field
  final $Res Function(DebtState) _then;
}

/// @nodoc
abstract class _$InitialDebtStateCopyWith<$Res> {
  factory _$InitialDebtStateCopyWith(
          _InitialDebtState value, $Res Function(_InitialDebtState) then) =
      __$InitialDebtStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialDebtStateCopyWithImpl<$Res>
    extends _$DebtStateCopyWithImpl<$Res>
    implements _$InitialDebtStateCopyWith<$Res> {
  __$InitialDebtStateCopyWithImpl(
      _InitialDebtState _value, $Res Function(_InitialDebtState) _then)
      : super(_value, (v) => _then(v as _InitialDebtState));

  @override
  _InitialDebtState get _value => super._value as _InitialDebtState;
}

/// @nodoc
class _$_InitialDebtState implements _InitialDebtState {
  const _$_InitialDebtState();

  @override
  String toString() {
    return 'DebtState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialDebtState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialDebtState implements DebtState {
  const factory _InitialDebtState() = _$_InitialDebtState;
}

/// @nodoc
abstract class _$LoadingDebtStateCopyWith<$Res> {
  factory _$LoadingDebtStateCopyWith(
          _LoadingDebtState value, $Res Function(_LoadingDebtState) then) =
      __$LoadingDebtStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingDebtStateCopyWithImpl<$Res>
    extends _$DebtStateCopyWithImpl<$Res>
    implements _$LoadingDebtStateCopyWith<$Res> {
  __$LoadingDebtStateCopyWithImpl(
      _LoadingDebtState _value, $Res Function(_LoadingDebtState) _then)
      : super(_value, (v) => _then(v as _LoadingDebtState));

  @override
  _LoadingDebtState get _value => super._value as _LoadingDebtState;
}

/// @nodoc
class _$_LoadingDebtState implements _LoadingDebtState {
  const _$_LoadingDebtState();

  @override
  String toString() {
    return 'DebtState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingDebtState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingDebtState implements DebtState {
  const factory _LoadingDebtState() = _$_LoadingDebtState;
}

/// @nodoc
abstract class _$DataDebtStateCopyWith<$Res> {
  factory _$DataDebtStateCopyWith(
          _DataDebtState value, $Res Function(_DataDebtState) then) =
      __$DataDebtStateCopyWithImpl<$Res>;
  $Res call({UserDebt userDebt, bool authUser});
}

/// @nodoc
class __$DataDebtStateCopyWithImpl<$Res> extends _$DebtStateCopyWithImpl<$Res>
    implements _$DataDebtStateCopyWith<$Res> {
  __$DataDebtStateCopyWithImpl(
      _DataDebtState _value, $Res Function(_DataDebtState) _then)
      : super(_value, (v) => _then(v as _DataDebtState));

  @override
  _DataDebtState get _value => super._value as _DataDebtState;

  @override
  $Res call({
    Object userDebt = freezed,
    Object authUser = freezed,
  }) {
    return _then(_DataDebtState(
      userDebt: userDebt == freezed ? _value.userDebt : userDebt as UserDebt,
      authUser: authUser == freezed ? _value.authUser : authUser as bool,
    ));
  }
}

/// @nodoc
class _$_DataDebtState implements _DataDebtState {
  const _$_DataDebtState({this.userDebt, @required this.authUser})
      : assert(authUser != null);

  @override
  final UserDebt userDebt;
  @override
  final bool authUser;

  @override
  String toString() {
    return 'DebtState.data(userDebt: $userDebt, authUser: $authUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataDebtState &&
            (identical(other.userDebt, userDebt) ||
                const DeepCollectionEquality()
                    .equals(other.userDebt, userDebt)) &&
            (identical(other.authUser, authUser) ||
                const DeepCollectionEquality()
                    .equals(other.authUser, authUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userDebt) ^
      const DeepCollectionEquality().hash(authUser);

  @JsonKey(ignore: true)
  @override
  _$DataDebtStateCopyWith<_DataDebtState> get copyWith =>
      __$DataDebtStateCopyWithImpl<_DataDebtState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return data(userDebt, authUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(userDebt, authUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataDebtState implements DebtState {
  const factory _DataDebtState({UserDebt userDebt, @required bool authUser}) =
      _$_DataDebtState;

  UserDebt get userDebt;
  bool get authUser;
  @JsonKey(ignore: true)
  _$DataDebtStateCopyWith<_DataDebtState> get copyWith;
}

/// @nodoc
abstract class _$SuccesPayDebtStateCopyWith<$Res> {
  factory _$SuccesPayDebtStateCopyWith(
          _SuccesPayDebtState value, $Res Function(_SuccesPayDebtState) then) =
      __$SuccesPayDebtStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SuccesPayDebtStateCopyWithImpl<$Res>
    extends _$DebtStateCopyWithImpl<$Res>
    implements _$SuccesPayDebtStateCopyWith<$Res> {
  __$SuccesPayDebtStateCopyWithImpl(
      _SuccesPayDebtState _value, $Res Function(_SuccesPayDebtState) _then)
      : super(_value, (v) => _then(v as _SuccesPayDebtState));

  @override
  _SuccesPayDebtState get _value => super._value as _SuccesPayDebtState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SuccesPayDebtState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_SuccesPayDebtState implements _SuccesPayDebtState {
  const _$_SuccesPayDebtState({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'DebtState.succesPay(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccesPayDebtState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SuccesPayDebtStateCopyWith<_SuccesPayDebtState> get copyWith =>
      __$SuccesPayDebtStateCopyWithImpl<_SuccesPayDebtState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return succesPay(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succesPay != null) {
      return succesPay(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return succesPay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succesPay != null) {
      return succesPay(this);
    }
    return orElse();
  }
}

abstract class _SuccesPayDebtState implements DebtState {
  const factory _SuccesPayDebtState({@required String message}) =
      _$_SuccesPayDebtState;

  String get message;
  @JsonKey(ignore: true)
  _$SuccesPayDebtStateCopyWith<_SuccesPayDebtState> get copyWith;
}

/// @nodoc
abstract class _$ErrorDebtStateCopyWith<$Res> {
  factory _$ErrorDebtStateCopyWith(
          _ErrorDebtState value, $Res Function(_ErrorDebtState) then) =
      __$ErrorDebtStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorDebtStateCopyWithImpl<$Res> extends _$DebtStateCopyWithImpl<$Res>
    implements _$ErrorDebtStateCopyWith<$Res> {
  __$ErrorDebtStateCopyWithImpl(
      _ErrorDebtState _value, $Res Function(_ErrorDebtState) _then)
      : super(_value, (v) => _then(v as _ErrorDebtState));

  @override
  _ErrorDebtState get _value => super._value as _ErrorDebtState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorDebtState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorDebtState implements _ErrorDebtState {
  const _$_ErrorDebtState({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'DebtState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorDebtState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorDebtStateCopyWith<_ErrorDebtState> get copyWith =>
      __$ErrorDebtStateCopyWithImpl<_ErrorDebtState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult data(UserDebt userDebt, bool authUser),
    @required TResult succesPay(String message),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(UserDebt userDebt, bool authUser),
    TResult succesPay(String message),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult succesPay(_SuccesPayDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(succesPay != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
    TResult succesPay(_SuccesPayDebtState value),
    TResult error(_ErrorDebtState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDebtState implements DebtState {
  const factory _ErrorDebtState({@required String message}) = _$_ErrorDebtState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorDebtStateCopyWith<_ErrorDebtState> get copyWith;
}

/// @nodoc
class _$DebtEventTearOff {
  const _$DebtEventTearOff();

// ignore: unused_element
  _InitalDebtEvent initial() {
    return const _InitalDebtEvent();
  }

// ignore: unused_element
  _InputPinDebtEvent inputPin({@required String inputPinValue}) {
    return _InputPinDebtEvent(
      inputPinValue: inputPinValue,
    );
  }

// ignore: unused_element
  _MakePaymentDebtEvent makePayment({@required double payment}) {
    return _MakePaymentDebtEvent(
      payment: payment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DebtEvent = _$DebtEventTearOff();

/// @nodoc
mixin _$DebtEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inputPin(String inputPinValue),
    @required TResult makePayment(double payment),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
    TResult makePayment(double payment),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitalDebtEvent value),
    @required TResult inputPin(_InputPinDebtEvent value),
    @required TResult makePayment(_MakePaymentDebtEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
    TResult makePayment(_MakePaymentDebtEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DebtEventCopyWith<$Res> {
  factory $DebtEventCopyWith(DebtEvent value, $Res Function(DebtEvent) then) =
      _$DebtEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DebtEventCopyWithImpl<$Res> implements $DebtEventCopyWith<$Res> {
  _$DebtEventCopyWithImpl(this._value, this._then);

  final DebtEvent _value;
  // ignore: unused_field
  final $Res Function(DebtEvent) _then;
}

/// @nodoc
abstract class _$InitalDebtEventCopyWith<$Res> {
  factory _$InitalDebtEventCopyWith(
          _InitalDebtEvent value, $Res Function(_InitalDebtEvent) then) =
      __$InitalDebtEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitalDebtEventCopyWithImpl<$Res> extends _$DebtEventCopyWithImpl<$Res>
    implements _$InitalDebtEventCopyWith<$Res> {
  __$InitalDebtEventCopyWithImpl(
      _InitalDebtEvent _value, $Res Function(_InitalDebtEvent) _then)
      : super(_value, (v) => _then(v as _InitalDebtEvent));

  @override
  _InitalDebtEvent get _value => super._value as _InitalDebtEvent;
}

/// @nodoc
class _$_InitalDebtEvent implements _InitalDebtEvent {
  const _$_InitalDebtEvent();

  @override
  String toString() {
    return 'DebtEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitalDebtEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inputPin(String inputPinValue),
    @required TResult makePayment(double payment),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
    TResult makePayment(double payment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitalDebtEvent value),
    @required TResult inputPin(_InputPinDebtEvent value),
    @required TResult makePayment(_MakePaymentDebtEvent value),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
    TResult makePayment(_MakePaymentDebtEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitalDebtEvent implements DebtEvent {
  const factory _InitalDebtEvent() = _$_InitalDebtEvent;
}

/// @nodoc
abstract class _$InputPinDebtEventCopyWith<$Res> {
  factory _$InputPinDebtEventCopyWith(
          _InputPinDebtEvent value, $Res Function(_InputPinDebtEvent) then) =
      __$InputPinDebtEventCopyWithImpl<$Res>;
  $Res call({String inputPinValue});
}

/// @nodoc
class __$InputPinDebtEventCopyWithImpl<$Res>
    extends _$DebtEventCopyWithImpl<$Res>
    implements _$InputPinDebtEventCopyWith<$Res> {
  __$InputPinDebtEventCopyWithImpl(
      _InputPinDebtEvent _value, $Res Function(_InputPinDebtEvent) _then)
      : super(_value, (v) => _then(v as _InputPinDebtEvent));

  @override
  _InputPinDebtEvent get _value => super._value as _InputPinDebtEvent;

  @override
  $Res call({
    Object inputPinValue = freezed,
  }) {
    return _then(_InputPinDebtEvent(
      inputPinValue: inputPinValue == freezed
          ? _value.inputPinValue
          : inputPinValue as String,
    ));
  }
}

/// @nodoc
class _$_InputPinDebtEvent implements _InputPinDebtEvent {
  const _$_InputPinDebtEvent({@required this.inputPinValue})
      : assert(inputPinValue != null);

  @override
  final String inputPinValue;

  @override
  String toString() {
    return 'DebtEvent.inputPin(inputPinValue: $inputPinValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputPinDebtEvent &&
            (identical(other.inputPinValue, inputPinValue) ||
                const DeepCollectionEquality()
                    .equals(other.inputPinValue, inputPinValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inputPinValue);

  @JsonKey(ignore: true)
  @override
  _$InputPinDebtEventCopyWith<_InputPinDebtEvent> get copyWith =>
      __$InputPinDebtEventCopyWithImpl<_InputPinDebtEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inputPin(String inputPinValue),
    @required TResult makePayment(double payment),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return inputPin(inputPinValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
    TResult makePayment(double payment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inputPin != null) {
      return inputPin(inputPinValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitalDebtEvent value),
    @required TResult inputPin(_InputPinDebtEvent value),
    @required TResult makePayment(_MakePaymentDebtEvent value),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return inputPin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
    TResult makePayment(_MakePaymentDebtEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inputPin != null) {
      return inputPin(this);
    }
    return orElse();
  }
}

abstract class _InputPinDebtEvent implements DebtEvent {
  const factory _InputPinDebtEvent({@required String inputPinValue}) =
      _$_InputPinDebtEvent;

  String get inputPinValue;
  @JsonKey(ignore: true)
  _$InputPinDebtEventCopyWith<_InputPinDebtEvent> get copyWith;
}

/// @nodoc
abstract class _$MakePaymentDebtEventCopyWith<$Res> {
  factory _$MakePaymentDebtEventCopyWith(_MakePaymentDebtEvent value,
          $Res Function(_MakePaymentDebtEvent) then) =
      __$MakePaymentDebtEventCopyWithImpl<$Res>;
  $Res call({double payment});
}

/// @nodoc
class __$MakePaymentDebtEventCopyWithImpl<$Res>
    extends _$DebtEventCopyWithImpl<$Res>
    implements _$MakePaymentDebtEventCopyWith<$Res> {
  __$MakePaymentDebtEventCopyWithImpl(
      _MakePaymentDebtEvent _value, $Res Function(_MakePaymentDebtEvent) _then)
      : super(_value, (v) => _then(v as _MakePaymentDebtEvent));

  @override
  _MakePaymentDebtEvent get _value => super._value as _MakePaymentDebtEvent;

  @override
  $Res call({
    Object payment = freezed,
  }) {
    return _then(_MakePaymentDebtEvent(
      payment: payment == freezed ? _value.payment : payment as double,
    ));
  }
}

/// @nodoc
class _$_MakePaymentDebtEvent implements _MakePaymentDebtEvent {
  const _$_MakePaymentDebtEvent({@required this.payment})
      : assert(payment != null);

  @override
  final double payment;

  @override
  String toString() {
    return 'DebtEvent.makePayment(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MakePaymentDebtEvent &&
            (identical(other.payment, payment) ||
                const DeepCollectionEquality().equals(other.payment, payment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(payment);

  @JsonKey(ignore: true)
  @override
  _$MakePaymentDebtEventCopyWith<_MakePaymentDebtEvent> get copyWith =>
      __$MakePaymentDebtEventCopyWithImpl<_MakePaymentDebtEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inputPin(String inputPinValue),
    @required TResult makePayment(double payment),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return makePayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
    TResult makePayment(double payment),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (makePayment != null) {
      return makePayment(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitalDebtEvent value),
    @required TResult inputPin(_InputPinDebtEvent value),
    @required TResult makePayment(_MakePaymentDebtEvent value),
  }) {
    assert(initial != null);
    assert(inputPin != null);
    assert(makePayment != null);
    return makePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
    TResult makePayment(_MakePaymentDebtEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (makePayment != null) {
      return makePayment(this);
    }
    return orElse();
  }
}

abstract class _MakePaymentDebtEvent implements DebtEvent {
  const factory _MakePaymentDebtEvent({@required double payment}) =
      _$_MakePaymentDebtEvent;

  double get payment;
  @JsonKey(ignore: true)
  _$MakePaymentDebtEventCopyWith<_MakePaymentDebtEvent> get copyWith;
}
