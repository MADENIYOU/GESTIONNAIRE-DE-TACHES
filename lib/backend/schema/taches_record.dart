import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TachesRecord extends FirestoreRecord {
  TachesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dateDeFin" field.
  DateTime? _dateDeFin;
  DateTime? get dateDeFin => _dateDeFin;
  bool hasDateDeFin() => _dateDeFin != null;

  // "niveauPriorite" field.
  String? _niveauPriorite;
  String get niveauPriorite => _niveauPriorite ?? '';
  bool hasNiveauPriorite() => _niveauPriorite != null;

  // "complete" field.
  int? _complete;
  int get complete => _complete ?? 0;
  bool hasComplete() => _complete != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _description = snapshotData['description'] as String?;
    _dateDeFin = snapshotData['dateDeFin'] as DateTime?;
    _niveauPriorite = snapshotData['niveauPriorite'] as String?;
    _complete = castToType<int>(snapshotData['complete']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Taches');

  static Stream<TachesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TachesRecord.fromSnapshot(s));

  static Future<TachesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TachesRecord.fromSnapshot(s));

  static TachesRecord fromSnapshot(DocumentSnapshot snapshot) => TachesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TachesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TachesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TachesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TachesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTachesRecordData({
  String? nom,
  String? description,
  DateTime? dateDeFin,
  String? niveauPriorite,
  int? complete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'description': description,
      'dateDeFin': dateDeFin,
      'niveauPriorite': niveauPriorite,
      'complete': complete,
    }.withoutNulls,
  );

  return firestoreData;
}

class TachesRecordDocumentEquality implements Equality<TachesRecord> {
  const TachesRecordDocumentEquality();

  @override
  bool equals(TachesRecord? e1, TachesRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.description == e2?.description &&
        e1?.dateDeFin == e2?.dateDeFin &&
        e1?.niveauPriorite == e2?.niveauPriorite &&
        e1?.complete == e2?.complete;
  }

  @override
  int hash(TachesRecord? e) => const ListEquality().hash(
      [e?.nom, e?.description, e?.dateDeFin, e?.niveauPriorite, e?.complete]);

  @override
  bool isValidKey(Object? o) => o is TachesRecord;
}
