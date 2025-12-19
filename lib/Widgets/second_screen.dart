import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200, 
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Pushed the Button to increment the counter'),
                  Text(
                    'Count is: $counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                onPressed: incrementCounter,
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           const Text('Pushed the Button to increment the counter'),
  //           Text(
  //             'Count is: $counter',
  //             style: Theme.of(context).textTheme.headlineMedium,
  //           ),
  //           SizedBox(height: 30),
  //           FloatingActionButton(
  //             onPressed: incrementCounter,
  //             tooltip: 'Increment',
  //             child: const Icon(Icons.add),
  //           ),
  //         ],
  //       ),
  //   );
  // }

}
