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
  _DataDebtState data(
      {@required List<Buying> buyingList, @required bool authUser}) {
    return _DataDebtState(
      buyingList: buyingList,
      authUser: authUser,
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
    @required TResult data(List<Buying> buyingList, bool authUser),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(List<Buying> buyingList, bool authUser),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult error(_ErrorDebtState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
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
    @required TResult data(List<Buying> buyingList, bool authUser),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(List<Buying> buyingList, bool authUser),
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
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
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
    @required TResult data(List<Buying> buyingList, bool authUser),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(List<Buying> buyingList, bool authUser),
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
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
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
  $Res call({List<Buying> buyingList, bool authUser});
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
    Object buyingList = freezed,
    Object authUser = freezed,
  }) {
    return _then(_DataDebtState(
      buyingList: buyingList == freezed
          ? _value.buyingList
          : buyingList as List<Buying>,
      authUser: authUser == freezed ? _value.authUser : authUser as bool,
    ));
  }
}

/// @nodoc
class _$_DataDebtState implements _DataDebtState {
  const _$_DataDebtState({@required this.buyingList, @required this.authUser})
      : assert(buyingList != null),
        assert(authUser != null);

  @override
  final List<Buying> buyingList;
  @override
  final bool authUser;

  @override
  String toString() {
    return 'DebtState.data(buyingList: $buyingList, authUser: $authUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataDebtState &&
            (identical(other.buyingList, buyingList) ||
                const DeepCollectionEquality()
                    .equals(other.buyingList, buyingList)) &&
            (identical(other.authUser, authUser) ||
                const DeepCollectionEquality()
                    .equals(other.authUser, authUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyingList) ^
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
    @required TResult data(List<Buying> buyingList, bool authUser),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(buyingList, authUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(List<Buying> buyingList, bool authUser),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(buyingList, authUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialDebtState value),
    @required TResult loading(_LoadingDebtState value),
    @required TResult data(_DataDebtState value),
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
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
  const factory _DataDebtState(
      {@required List<Buying> buyingList,
      @required bool authUser}) = _$_DataDebtState;

  List<Buying> get buyingList;
  bool get authUser;
  @JsonKey(ignore: true)
  _$DataDebtStateCopyWith<_DataDebtState> get copyWith;
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
    @required TResult data(List<Buying> buyingList, bool authUser),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult data(List<Buying> buyingList, bool authUser),
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
    @required TResult error(_ErrorDebtState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialDebtState value),
    TResult loading(_LoadingDebtState value),
    TResult data(_DataDebtState value),
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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitalDebtEvent value),
    @required TResult inputPin(_InputPinDebtEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
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
  }) {
    assert(initial != null);
    assert(inputPin != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
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
  }) {
    assert(initial != null);
    assert(inputPin != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
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
  }) {
    assert(initial != null);
    assert(inputPin != null);
    return inputPin(inputPinValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inputPin(String inputPinValue),
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
  }) {
    assert(initial != null);
    assert(inputPin != null);
    return inputPin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitalDebtEvent value),
    TResult inputPin(_InputPinDebtEvent value),
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
