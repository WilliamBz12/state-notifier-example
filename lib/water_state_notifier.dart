import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class WaterState {}

class Liquido implements WaterState {}

class Gasoso implements WaterState {}

class Solido implements WaterState {}

/// State notifier

class WaterStateNotifier extends StateNotifier<WaterState> {
  WaterStateNotifier() : super(Liquido());

  void setGasoso() {
    state = Gasoso();
  }

  void setSolido() {
    state = Solido();
  }

  void setLiquido() {
    state = Liquido();
  }
}
