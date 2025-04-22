// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrinkinfoStruct extends BaseStruct {
  DrinkinfoStruct({
    int? id,
    int? cateId,
    String? title,
    double? price,
    String? description,
    String? image,
    List<String>? ingredients,
    int? totalSales,
    bool? isspecial,
    String? promotioninfo,
    int? qty,
    int? cupsize,
  })  : _id = id,
        _cateId = cateId,
        _title = title,
        _price = price,
        _description = description,
        _image = image,
        _ingredients = ingredients,
        _totalSales = totalSales,
        _isspecial = isspecial,
        _promotioninfo = promotioninfo,
        _qty = qty,
        _cupsize = cupsize;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "cateId" field.
  int? _cateId;
  int get cateId => _cateId ?? 0;
  set cateId(int? val) => _cateId = val;

  void incrementCateId(int amount) => cateId = cateId + amount;

  bool hasCateId() => _cateId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "ingredients" field.
  List<String>? _ingredients;
  List<String> get ingredients => _ingredients ?? const [];
  set ingredients(List<String>? val) => _ingredients = val;

  void updateIngredients(Function(List<String>) updateFn) {
    updateFn(_ingredients ??= []);
  }

  bool hasIngredients() => _ingredients != null;

  // "totalSales" field.
  int? _totalSales;
  int get totalSales => _totalSales ?? 0;
  set totalSales(int? val) => _totalSales = val;

  void incrementTotalSales(int amount) => totalSales = totalSales + amount;

  bool hasTotalSales() => _totalSales != null;

  // "isspecial" field.
  bool? _isspecial;
  bool get isspecial => _isspecial ?? false;
  set isspecial(bool? val) => _isspecial = val;

  bool hasIsspecial() => _isspecial != null;

  // "promotioninfo" field.
  String? _promotioninfo;
  String get promotioninfo => _promotioninfo ?? '';
  set promotioninfo(String? val) => _promotioninfo = val;

  bool hasPromotioninfo() => _promotioninfo != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "cupsize" field.
  int? _cupsize;
  int get cupsize => _cupsize ?? 0;
  set cupsize(int? val) => _cupsize = val;

  void incrementCupsize(int amount) => cupsize = cupsize + amount;

  bool hasCupsize() => _cupsize != null;

  static DrinkinfoStruct fromMap(Map<String, dynamic> data) => DrinkinfoStruct(
        id: castToType<int>(data['id']),
        cateId: castToType<int>(data['cateId']),
        title: data['title'] as String?,
        price: castToType<double>(data['price']),
        description: data['description'] as String?,
        image: data['image'] as String?,
        ingredients: getDataList(data['ingredients']),
        totalSales: castToType<int>(data['totalSales']),
        isspecial: data['isspecial'] as bool?,
        promotioninfo: data['promotioninfo'] as String?,
        qty: castToType<int>(data['qty']),
        cupsize: castToType<int>(data['cupsize']),
      );

  static DrinkinfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DrinkinfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'cateId': _cateId,
        'title': _title,
        'price': _price,
        'description': _description,
        'image': _image,
        'ingredients': _ingredients,
        'totalSales': _totalSales,
        'isspecial': _isspecial,
        'promotioninfo': _promotioninfo,
        'qty': _qty,
        'cupsize': _cupsize,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'cateId': serializeParam(
          _cateId,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'ingredients': serializeParam(
          _ingredients,
          ParamType.String,
          isList: true,
        ),
        'totalSales': serializeParam(
          _totalSales,
          ParamType.int,
        ),
        'isspecial': serializeParam(
          _isspecial,
          ParamType.bool,
        ),
        'promotioninfo': serializeParam(
          _promotioninfo,
          ParamType.String,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'cupsize': serializeParam(
          _cupsize,
          ParamType.int,
        ),
      }.withoutNulls;

  static DrinkinfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DrinkinfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        cateId: deserializeParam(
          data['cateId'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        ingredients: deserializeParam<String>(
          data['ingredients'],
          ParamType.String,
          true,
        ),
        totalSales: deserializeParam(
          data['totalSales'],
          ParamType.int,
          false,
        ),
        isspecial: deserializeParam(
          data['isspecial'],
          ParamType.bool,
          false,
        ),
        promotioninfo: deserializeParam(
          data['promotioninfo'],
          ParamType.String,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        cupsize: deserializeParam(
          data['cupsize'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DrinkinfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DrinkinfoStruct &&
        id == other.id &&
        cateId == other.cateId &&
        title == other.title &&
        price == other.price &&
        description == other.description &&
        image == other.image &&
        listEquality.equals(ingredients, other.ingredients) &&
        totalSales == other.totalSales &&
        isspecial == other.isspecial &&
        promotioninfo == other.promotioninfo &&
        qty == other.qty &&
        cupsize == other.cupsize;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        cateId,
        title,
        price,
        description,
        image,
        ingredients,
        totalSales,
        isspecial,
        promotioninfo,
        qty,
        cupsize
      ]);
}

DrinkinfoStruct createDrinkinfoStruct({
  int? id,
  int? cateId,
  String? title,
  double? price,
  String? description,
  String? image,
  int? totalSales,
  bool? isspecial,
  String? promotioninfo,
  int? qty,
  int? cupsize,
}) =>
    DrinkinfoStruct(
      id: id,
      cateId: cateId,
      title: title,
      price: price,
      description: description,
      image: image,
      totalSales: totalSales,
      isspecial: isspecial,
      promotioninfo: promotioninfo,
      qty: qty,
      cupsize: cupsize,
    );
