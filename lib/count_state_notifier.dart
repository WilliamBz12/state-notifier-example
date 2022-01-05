import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountStateNotifier extends StateNotifier<int> {
  CountStateNotifier() : super(0);

  void increment() {
    state = state + 1;
  }
}
