import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/counter_app/counter_provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    final  counterProvider= Provider.of<CounterProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: const TextStyle(fontSize: 20),
          );
        },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          counterProvider.incrementer();
          print(counterProvider.countGetter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}