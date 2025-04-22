// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategroiesStruct extends BaseStruct {
  CategroiesStruct({
    int? cateId,
    String? cateName,
  })  : _cateId = cateId,
        _cateName = cateName;

  // "CateId" field.
  int? _cateId;
  int get cateId => _cateId ?? 0;
  set cateId(int? val) => _cateId = val;

  void incrementCateId(int amount) => cateId = cateId + amount;

  bool hasCateId() => _cateId != null;

  // "CateName" field.
  String? _cateName;
  String get cateName => _cateName ?? '';
  set cateName(String? val) => _cateName = val;

  bool hasCateName() => _cateName != null;

  static CategroiesStruct fromMap(Map<String, dynamic> data) =>
      CategroiesStruct(
        cateId: castToType<int>(data['CateId']),
        cateName: data['CateName'] as String?,
      );

  static CategroiesStruct? maybeFromMap(dynamic data) => data is Map
      ? CategroiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CateId': _cateId,
        'CateName': _cateName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CateId': serializeParam(
          _cateId,
          ParamType.int,
        ),
        'CateName': serializeParam(
          _cateName,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategroiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategroiesStruct(
        cateId: deserializeParam(
          data['CateId'],
          ParamType.int,
          false,
        ),
        cateName: deserializeParam(
          data['CateName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategroiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategroiesStruct &&
        cateId == other.cateId &&
        cateName == other.cateName;
  }

  @override
  int get hashCode => const ListEquality().hash([cateId, cateName]);
}

CategroiesStruct createCategroiesStruct({
  int? cateId,
  String? cateName,
}) =>
    CategroiesStruct(
      cateId: cateId,
      cateName: cateName,
    );
