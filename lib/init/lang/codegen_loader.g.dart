// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "expenses": "Затраты",
  "sum": "Сумма",
  "category": "Категория",
  "price": "Цена",
  "date": "Дата",
  "search": "Поиск",
  "delete": "Удалить",
  "close": "Закрыть",
  "enterCosts": "Введите затраты",
  "enterCatergory": "Укажите категорию",
  "transport": "Транспорт",
  "food": "Еда",
  "from": "От",
  "to": "До",
  "toDay": "Сегодня",
  "perMonth": "За месяц",
  "profile": "Профиль"
};
static const Map<String,dynamic> ky = {
  "expenses": "Чыгымдар",
  "sum": "Суммасы",
  "category": "Категория",
  "price": "Баасы",
  "date": "Убакыты",
  "search": "Издөө",
  "delete": "Жок кылуу",
  "close": "Жабуу",
  "enterCosts": "Чыгымдарды киргизиңиз",
  "enterCatergory": "Категорияны көрсөтүңүз",
  "transport": "Транспорт",
  "food": "Тамак-аш",
  "from": "Башы",
  "to": "Аягы",
  "toDay": "Бүгүнкү күн",
  "perMonth": "Айына",
  "profile": "Профиль"
};
static const Map<String,dynamic> en = {
  "expenses": "Expenses",
  "sum": "Sum",
  "category": "Category",
  "price": "Price",
  "date": "Date",
  "search": "Search",
  "delete": "Delete",
  "close": "Close",
  "enterCosts": "Enter costs",
  "enterCatergory": "Specify a category",
  "transport": "Transport",
  "food": "Food",
  "from": "From",
  "to": "To",
  "toDay": "To day",
  "perMonth": "Per month",
  "profile": "Profile"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "ky": ky, "en": en};
}
