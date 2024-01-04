// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PbCurrencyStruct extends FFFirebaseStruct {
  PbCurrencyStruct({
    String? ccy,
    String? baseCcy,
    String? sale,
    String? buy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ccy = ccy,
        _baseCcy = baseCcy,
        _sale = sale,
        _buy = buy,
        super(firestoreUtilData);

  // "ccy" field.
  String? _ccy;
  String get ccy => _ccy ?? '';
  set ccy(String? val) => _ccy = val;
  bool hasCcy() => _ccy != null;

  // "base_ccy" field.
  String? _baseCcy;
  String get baseCcy => _baseCcy ?? '';
  set baseCcy(String? val) => _baseCcy = val;
  bool hasBaseCcy() => _baseCcy != null;

  // "sale" field.
  String? _sale;
  String get sale => _sale ?? '';
  set sale(String? val) => _sale = val;
  bool hasSale() => _sale != null;

  // "buy" field.
  String? _buy;
  String get buy => _buy ?? '';
  set buy(String? val) => _buy = val;
  bool hasBuy() => _buy != null;

  static PbCurrencyStruct fromMap(Map<String, dynamic> data) =>
      PbCurrencyStruct(
        ccy: data['ccy'] as String?,
        baseCcy: data['base_ccy'] as String?,
        sale: data['sale'] as String?,
        buy: data['buy'] as String?,
      );

  static PbCurrencyStruct? maybeFromMap(dynamic data) => data is Map
      ? PbCurrencyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ccy': _ccy,
        'base_ccy': _baseCcy,
        'sale': _sale,
        'buy': _buy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ccy': serializeParam(
          _ccy,
          ParamType.String,
        ),
        'base_ccy': serializeParam(
          _baseCcy,
          ParamType.String,
        ),
        'sale': serializeParam(
          _sale,
          ParamType.String,
        ),
        'buy': serializeParam(
          _buy,
          ParamType.String,
        ),
      }.withoutNulls;

  static PbCurrencyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PbCurrencyStruct(
        ccy: deserializeParam(
          data['ccy'],
          ParamType.String,
          false,
        ),
        baseCcy: deserializeParam(
          data['base_ccy'],
          ParamType.String,
          false,
        ),
        sale: deserializeParam(
          data['sale'],
          ParamType.String,
          false,
        ),
        buy: deserializeParam(
          data['buy'],
          ParamType.String,
          false,
        ),
      );

  static PbCurrencyStruct fromAlgoliaData(Map<String, dynamic> data) =>
      PbCurrencyStruct(
        ccy: convertAlgoliaParam(
          data['ccy'],
          ParamType.String,
          false,
        ),
        baseCcy: convertAlgoliaParam(
          data['base_ccy'],
          ParamType.String,
          false,
        ),
        sale: convertAlgoliaParam(
          data['sale'],
          ParamType.String,
          false,
        ),
        buy: convertAlgoliaParam(
          data['buy'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'PbCurrencyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PbCurrencyStruct &&
        ccy == other.ccy &&
        baseCcy == other.baseCcy &&
        sale == other.sale &&
        buy == other.buy;
  }

  @override
  int get hashCode => const ListEquality().hash([ccy, baseCcy, sale, buy]);
}

PbCurrencyStruct createPbCurrencyStruct({
  String? ccy,
  String? baseCcy,
  String? sale,
  String? buy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PbCurrencyStruct(
      ccy: ccy,
      baseCcy: baseCcy,
      sale: sale,
      buy: buy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PbCurrencyStruct? updatePbCurrencyStruct(
  PbCurrencyStruct? pbCurrency, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pbCurrency
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPbCurrencyStructData(
  Map<String, dynamic> firestoreData,
  PbCurrencyStruct? pbCurrency,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pbCurrency == null) {
    return;
  }
  if (pbCurrency.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pbCurrency.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pbCurrencyData = getPbCurrencyFirestoreData(pbCurrency, forFieldValue);
  final nestedData = pbCurrencyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pbCurrency.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPbCurrencyFirestoreData(
  PbCurrencyStruct? pbCurrency, [
  bool forFieldValue = false,
]) {
  if (pbCurrency == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pbCurrency.toMap());

  // Add any Firestore field values
  pbCurrency.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPbCurrencyListFirestoreData(
  List<PbCurrencyStruct>? pbCurrencys,
) =>
    pbCurrencys?.map((e) => getPbCurrencyFirestoreData(e, true)).toList() ?? [];
