import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snexample/provider.dart';
import 'package:snexample/water_state_notifier.dart';

class HomeWaterPage extends ConsumerStatefulWidget {
  const HomeWaterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<HomeWaterPage> createState() => _HomeWaterPageState();
}

class _HomeWaterPageState extends ConsumerState<HomeWaterPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(waterState);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (state is Liquido) Text("Agua liquida"),
            if (state is Solido) Text("Agua solida"),
            if (state is Gasoso) Text("agua gasosa"),
            ElevatedButton(
              onPressed: () {
                ref.read(waterState.notifier).setGasoso();
              },
              child: Text("Gasoso"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(waterState.notifier).setSolido();
              },
              child: Text("Solido"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(waterState.notifier).setLiquido();
              },
              child: Text("Liquido"),
            ),
          ],
        ),
      ),
    );
  }
}
