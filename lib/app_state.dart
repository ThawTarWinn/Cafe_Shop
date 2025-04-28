import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DrinkinfoStruct> _drinkcart = [];
  List<DrinkinfoStruct> get drinkcart => _drinkcart;
  set drinkcart(List<DrinkinfoStruct> value) {
    _drinkcart = value;
  }

  void addToDrinkcart(DrinkinfoStruct value) {
    drinkcart.add(value);
  }

  void removeFromDrinkcart(DrinkinfoStruct value) {
    drinkcart.remove(value);
  }

  void removeAtIndexFromDrinkcart(int index) {
    drinkcart.removeAt(index);
  }

  void updateDrinkcartAtIndex(
    int index,
    DrinkinfoStruct Function(DrinkinfoStruct) updateFn,
  ) {
    drinkcart[index] = updateFn(_drinkcart[index]);
  }

  void insertAtIndexInDrinkcart(int index, DrinkinfoStruct value) {
    drinkcart.insert(index, value);
  }

  bool _isordering = false;
  bool get isordering => _isordering;
  set isordering(bool value) {
    _isordering = value;
  }
}
