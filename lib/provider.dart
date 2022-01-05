import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snexample/count_state_notifier.dart';
import 'package:snexample/water_state_notifier.dart';

final countState = StateNotifierProvider<CountStateNotifier, int>(
    (ref) => CountStateNotifier());

final waterState = StateNotifierProvider<WaterStateNotifier, WaterState>(
    (ref) => WaterStateNotifier());
