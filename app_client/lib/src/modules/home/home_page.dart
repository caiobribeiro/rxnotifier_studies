import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:rxnotifier_studies/src/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeStore = HomeStore();

  @override
  void initState() {
    super.initState();
    rxObserver(() {
      print(homeStore.counter.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador'),
            RxBuilder(builder: (_) {
              return Text('${homeStore.counter.value}');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeStore.incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
