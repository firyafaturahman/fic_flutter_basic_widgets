import 'package:flutter/material.dart';

// ! STATEFUL
class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<ChangeText> createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String text = 'Yooo... ini dari stateful';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$text - Stateful',
          style: const TextStyle(
            fontSize: 35,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: onChange,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            padding: const EdgeInsets.all(
              25,
            ),
          ),
          child: const Text(
            'Change Text',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  void onChange() {
    String newText = DateTime.now().toIso8601String();
    setState(() {
      text = newText;
    });
  }
}
