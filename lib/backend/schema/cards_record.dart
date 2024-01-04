import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsRecord extends FirestoreRecord {
  CardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "expiredAt" field.
  DateTime? _expiredAt;
  DateTime? get expiredAt => _expiredAt;
  bool hasExpiredAt() => _expiredAt != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "transactions" field.
  List<DocumentReference>? _transactions;
  List<DocumentReference> get transactions => _transactions ?? const [];
  bool hasTransactions() => _transactions != null;

  void _initializeFields() {
    _balance = castToType<double>(snapshotData['balance']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _expiredAt = snapshotData['expiredAt'] as DateTime?;
    _number = snapshotData['number'] as String?;
    _transactions = getDataList(snapshotData['transactions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cards');

  static Stream<CardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardsRecord.fromSnapshot(s));

  static Future<CardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardsRecord.fromSnapshot(s));

  static CardsRecord fromSnapshot(DocumentSnapshot snapshot) => CardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardsRecord._(reference, mapFromFirestore(data));

  static CardsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      CardsRecord.getDocumentFromData(
        {
          'balance': convertAlgoliaParam(
            snapshot.data['balance'],
            ParamType.double,
            false,
          ),
          'createdAt': convertAlgoliaParam(
            snapshot.data['createdAt'],
            ParamType.DateTime,
            false,
          ),
          'expiredAt': convertAlgoliaParam(
            snapshot.data['expiredAt'],
            ParamType.DateTime,
            false,
          ),
          'number': snapshot.data['number'],
          'transactions': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['transactions'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        CardsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CardsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'cards',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'CardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardsRecordData({
  double? balance,
  DateTime? createdAt,
  DateTime? expiredAt,
  String? number,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'balance': balance,
      'createdAt': createdAt,
      'expiredAt': expiredAt,
      'number': number,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardsRecordDocumentEquality implements Equality<CardsRecord> {
  const CardsRecordDocumentEquality();

  @override
  bool equals(CardsRecord? e1, CardsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.balance == e2?.balance &&
        e1?.createdAt == e2?.createdAt &&
        e1?.expiredAt == e2?.expiredAt &&
        e1?.number == e2?.number &&
        listEquality.equals(e1?.transactions, e2?.transactions);
  }

  @override
  int hash(CardsRecord? e) => const ListEquality().hash(
      [e?.balance, e?.createdAt, e?.expiredAt, e?.number, e?.transactions]);

  @override
  bool isValidKey(Object? o) => o is CardsRecord;
}
