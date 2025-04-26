// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CostStruct extends BaseStruct {
  CostStruct({
    double? subcost,
    double? shippingfees,
    double? taxes,
    double? discount,
    double? totalcost,
  })  : _subcost = subcost,
        _shippingfees = shippingfees,
        _taxes = taxes,
        _discount = discount,
        _totalcost = totalcost;

  // "subcost" field.
  double? _subcost;
  double get subcost => _subcost ?? 0.0;
  set subcost(double? val) => _subcost = val;

  void incrementSubcost(double amount) => subcost = subcost + amount;

  bool hasSubcost() => _subcost != null;

  // "shippingfees" field.
  double? _shippingfees;
  double get shippingfees => _shippingfees ?? 0.0;
  set shippingfees(double? val) => _shippingfees = val;

  void incrementShippingfees(double amount) =>
      shippingfees = shippingfees + amount;

  bool hasShippingfees() => _shippingfees != null;

  // "taxes" field.
  double? _taxes;
  double get taxes => _taxes ?? 0.0;
  set taxes(double? val) => _taxes = val;

  void incrementTaxes(double amount) => taxes = taxes + amount;

  bool hasTaxes() => _taxes != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "totalcost" field.
  double? _totalcost;
  double get totalcost => _totalcost ?? 0.0;
  set totalcost(double? val) => _totalcost = val;

  void incrementTotalcost(double amount) => totalcost = totalcost + amount;

  bool hasTotalcost() => _totalcost != null;

  static CostStruct fromMap(Map<String, dynamic> data) => CostStruct(
        subcost: castToType<double>(data['subcost']),
        shippingfees: castToType<double>(data['shippingfees']),
        taxes: castToType<double>(data['taxes']),
        discount: castToType<double>(data['discount']),
        totalcost: castToType<double>(data['totalcost']),
      );

  static CostStruct? maybeFromMap(dynamic data) =>
      data is Map ? CostStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'subcost': _subcost,
        'shippingfees': _shippingfees,
        'taxes': _taxes,
        'discount': _discount,
        'totalcost': _totalcost,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subcost': serializeParam(
          _subcost,
          ParamType.double,
        ),
        'shippingfees': serializeParam(
          _shippingfees,
          ParamType.double,
        ),
        'taxes': serializeParam(
          _taxes,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'totalcost': serializeParam(
          _totalcost,
          ParamType.double,
        ),
      }.withoutNulls;

  static CostStruct fromSerializableMap(Map<String, dynamic> data) =>
      CostStruct(
        subcost: deserializeParam(
          data['subcost'],
          ParamType.double,
          false,
        ),
        shippingfees: deserializeParam(
          data['shippingfees'],
          ParamType.double,
          false,
        ),
        taxes: deserializeParam(
          data['taxes'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        totalcost: deserializeParam(
          data['totalcost'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CostStruct &&
        subcost == other.subcost &&
        shippingfees == other.shippingfees &&
        taxes == other.taxes &&
        discount == other.discount &&
        totalcost == other.totalcost;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([subcost, shippingfees, taxes, discount, totalcost]);
}

CostStruct createCostStruct({
  double? subcost,
  double? shippingfees,
  double? taxes,
  double? discount,
  double? totalcost,
}) =>
    CostStruct(
      subcost: subcost,
      shippingfees: shippingfees,
      taxes: taxes,
      discount: discount,
      totalcost: totalcost,
    );
