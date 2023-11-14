import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Indicators"),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text("Circular progress indicator"),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black54,
          ),
          SizedBox(height: 20),
          Text("Circular progress indicator controlado"),
          SizedBox(height: 10),
          _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((element) => element < 100),
        builder: ((context, snapshot) {
          final progressVal = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressVal,
                  strokeWidth: 2,
                  backgroundColor: Colors.black26,
                ),
                const SizedBox(width: 20),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressVal,
                ))
              ],
            ),
          );
        }));
  }
}
