import 'package:flutter/material.dart';
import 'package:kai_tw_ui_kit/kai_tw_ui_kit.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kai_tw_ui_kit'),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: AppVersion(),
            ),
          ],
        ),
      ),
    );
  }
}
