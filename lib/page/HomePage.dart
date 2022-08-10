import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.intialData = 0}) : super(0);

  int intialData;

  void addData() {
    emit(state + 1);
  }

  void minData() {
    emit(state - 1);
  }
}

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  CounterCubit myCounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CUBIT APPS"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        StreamBuilder(
            initialData: myCounter.intialData,
            stream: myCounter.stream,
            builder: ((context, snapshot) {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: const TextStyle(fontSize: 50),
                ),
              );
            })),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  myCounter.minData();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  myCounter.addData();
                },
                icon: const Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}
