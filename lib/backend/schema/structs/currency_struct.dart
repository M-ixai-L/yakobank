// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrencyStruct extends FFFirebaseStruct {
  CurrencyStruct({
    int? currencyCodeA,
    int? currencyCodeB,
    int? date,
    double? rateBuy,
    double? rateSell,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currencyCodeA = currencyCodeA,
        _currencyCodeB = currencyCodeB,
        _date = date,
        _rateBuy = rateBuy,
        _rateSell = rateSell,
        super(firestoreUtilData);

  // "currencyCodeA" field.
  int? _currencyCodeA;
  int get currencyCodeA => _currencyCodeA ?? 0;
  set currencyCodeA(int? val) => _currencyCodeA = val;
  void incrementCurrencyCodeA(int amount) =>
      _currencyCodeA = currencyCodeA + amount;
  bool hasCurrencyCodeA() => _currencyCodeA != null;

  // "currencyCodeB" field.
  int? _currencyCodeB;
  int get currencyCodeB => _currencyCodeB ?? 0;
  set currencyCodeB(int? val) => _currencyCodeB = val;
  void incrementCurrencyCodeB(int amount) =>
      _currencyCodeB = currencyCodeB + amount;
  bool hasCurrencyCodeB() => _currencyCodeB != null;

  // "date" field.
  int? _date;
  int get date => _date ?? 0;
  set date(int? val) => _date = val;
  void incrementDate(int amount) => _date = date + amount;
  bool hasDate() => _date != null;

  // "rateBuy" field.
  double? _rateBuy;
  double get rateBuy => _rateBuy ?? 0.0;
  set rateBuy(double? val) => _rateBuy = val;
  void incrementRateBuy(double amount) => _rateBuy = rateBuy + amount;
  bool hasRateBuy() => _rateBuy != null;

  // "rateSell" field.
  double? _rateSell;
  double get rateSell => _rateSell ?? 0.0;
  set rateSell(double? val) => _rateSell = val;
  void incrementRateSell(double amount) => _rateSell = rateSell + amount;
  bool hasRateSell() => _rateSell != null;

  static CurrencyStruct fromMap(Map<String, dynamic> data) => CurrencyStruct(
        currencyCodeA: castToType<int>(data['currencyCodeA']),
        currencyCodeB: castToType<int>(data['currencyCodeB']),
        date: castToType<int>(data['date']),
        rateBuy: castToType<double>(data['rateBuy']),
        rateSell: castToType<double>(data['rateSell']),
      );

  static CurrencyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CurrencyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'currencyCodeA': _currencyCodeA,
        'currencyCodeB': _currencyCodeB,
        'date': _date,
        'rateBuy': _rateBuy,
        'rateSell': _rateSell,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currencyCodeA': serializeParam(
          _currencyCodeA,
          ParamType.int,
        ),
        'currencyCodeB': serializeParam(
          _currencyCodeB,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.int,
        ),
        'rateBuy': serializeParam(
          _rateBuy,
          ParamType.double,
        ),
        'rateSell': serializeParam(
          _rateSell,
          ParamType.double,
        ),
      }.withoutNulls;

  static CurrencyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrencyStruct(
        currencyCodeA: deserializeParam(
          data['currencyCodeA'],
          ParamType.int,
          false,
        ),
        currencyCodeB: deserializeParam(
          data['currencyCodeB'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.int,
          false,
        ),
        rateBuy: deserializeParam(
          data['rateBuy'],
          ParamType.double,
          false,
        ),
        rateSell: deserializeParam(
          data['rateSell'],
          ParamType.double,
          false,
        ),
      );

  static CurrencyStruct fromAlgoliaData(Map<String, dynamic> data) =>
      CurrencyStruct(
        currencyCodeA: convertAlgoliaParam(
          data['currencyCodeA'],
          ParamType.int,
          false,
        ),
        currencyCodeB: convertAlgoliaParam(
          data['currencyCodeB'],
          ParamType.int,
          false,
        ),
        date: convertAlgoliaParam(
          data['date'],
          ParamType.int,
          false,
        ),
        rateBuy: convertAlgoliaParam(
          data['rateBuy'],
          ParamType.double,
          false,
        ),
        rateSell: convertAlgoliaParam(
          data['rateSell'],
          ParamType.double,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CurrencyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrencyStruct &&
        currencyCodeA == other.currencyCodeA &&
        currencyCodeB == other.currencyCodeB &&
        date == other.date &&
        rateBuy == other.rateBuy &&
        rateSell == other.rateSell;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([currencyCodeA, currencyCodeB, date, rateBuy, rateSell]);
}

CurrencyStruct createCurrencyStruct({
  int? currencyCodeA,
  int? currencyCodeB,
  int? date,
  double? rateBuy,
  double? rateSell,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrencyStruct(
      currencyCodeA: currencyCodeA,
      currencyCodeB: currencyCodeB,
      date: date,
      rateBuy: rateBuy,
      rateSell: rateSell,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrencyStruct? updateCurrencyStruct(
  CurrencyStruct? currency, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currency
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrencyStructData(
  Map<String, dynamic> firestoreData,
  CurrencyStruct? currency,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currency == null) {
    return;
  }
  if (currency.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currency.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currencyData = getCurrencyFirestoreData(currency, forFieldValue);
  final nestedData = currencyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currency.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrencyFirestoreData(
  CurrencyStruct? currency, [
  bool forFieldValue = false,
]) {
  if (currency == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currency.toMap());

  // Add any Firestore field values
  currency.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrencyListFirestoreData(
  List<CurrencyStruct>? currencys,
) =>
    currencys?.map((e) => getCurrencyFirestoreData(e, true)).toList() ?? [];
