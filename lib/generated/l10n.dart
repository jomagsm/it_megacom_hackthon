// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Demo`
  String get title {
    return Intl.message(
      'Demo',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Забыл пароль?`
  String get forgotPassword {
    return Intl.message(
      'Забыл пароль?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get enterButton {
    return Intl.message(
      'Войти',
      name: 'enterButton',
      desc: '',
      args: [],
    );
  }

  /// `ID студента`
  String get idStudent {
    return Intl.message(
      'ID студента',
      name: 'idStudent',
      desc: '',
      args: [],
    );
  }

  /// `/шт`
  String get qnt {
    return Intl.message(
      '/шт',
      name: 'qnt',
      desc: '',
      args: [],
    );
  }

  /// `Выберите продукты`
  String get selectProduct {
    return Intl.message(
      'Выберите продукты',
      name: 'selectProduct',
      desc: '',
      args: [],
    );
  }

  /// `Назад`
  String get back {
    return Intl.message(
      'Назад',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Ваша корзина пуста!`
  String get emptyBasket {
    return Intl.message(
      'Ваша корзина пуста!',
      name: 'emptyBasket',
      desc: '',
      args: [],
    );
  }

  /// `Детали оплаты`
  String get payDetail {
    return Intl.message(
      'Детали оплаты',
      name: 'payDetail',
      desc: '',
      args: [],
    );
  }

  /// `Долги`
  String get debts {
    return Intl.message(
      'Долги',
      name: 'debts',
      desc: '',
      args: [],
    );
  }

  /// `Долг`
  String get debt {
    return Intl.message(
      'Долг',
      name: 'debt',
      desc: '',
      args: [],
    );
  }

  /// `Введите пин код для получение информации`
  String get inputPinInfo {
    return Intl.message(
      'Введите пин код для получение информации',
      name: 'inputPinInfo',
      desc: '',
      args: [],
    );
  }

  /// `Пин-код`
  String get pin {
    return Intl.message(
      'Пин-код',
      name: 'pin',
      desc: '',
      args: [],
    );
  }

  /// `Введите пин-код`
  String get inputPin {
    return Intl.message(
      'Введите пин-код',
      name: 'inputPin',
      desc: '',
      args: [],
    );
  }

  /// `Наименование`
  String get name {
    return Intl.message(
      'Наименование',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message(
      'Дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Итого`
  String get total {
    return Intl.message(
      'Итого',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Оплата`
  String get pay {
    return Intl.message(
      'Оплата',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Оплатить`
  String get payment {
    return Intl.message(
      'Оплатить',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Сумма оплаты`
  String get summPay {
    return Intl.message(
      'Сумма оплаты',
      name: 'summPay',
      desc: '',
      args: [],
    );
  }

  /// `Сдача`
  String get change {
    return Intl.message(
      'Сдача',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Id`
  String get id {
    return Intl.message(
      'Id',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `c`
  String get com {
    return Intl.message(
      'c',
      name: 'com',
      desc: '',
      args: [],
    );
  }

  /// `Кол-во`
  String get amount {
    return Intl.message(
      'Кол-во',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Цена`
  String get price {
    return Intl.message(
      'Цена',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Сумма сдачи`
  String get sumChange {
    return Intl.message(
      'Сумма сдачи',
      name: 'sumChange',
      desc: '',
      args: [],
    );
  }

  /// `Сумма долга`
  String get sumDebt {
    return Intl.message(
      'Сумма долга',
      name: 'sumDebt',
      desc: '',
      args: [],
    );
  }

  /// `Введите сумму`
  String get inputSum {
    return Intl.message(
      'Введите сумму',
      name: 'inputSum',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}