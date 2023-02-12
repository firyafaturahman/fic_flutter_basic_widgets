import 'package:flutter/material.dart';

import './show_text.dart';
import './change_text.dart';

// ! STATELESS
class StatelessStateful extends StatefulWidget {
  const StatelessStateful({super.key});

  @override
  State<StatelessStateful> createState() => _StatelessStatefulState();
}

class _StatelessStatefulState extends State<StatelessStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless & Stateful'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ShowText(
                text: 'Show Text Stateless',
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
              ChangeText(),
            ],
          ),
        ),
      ),
    );
  }
}
