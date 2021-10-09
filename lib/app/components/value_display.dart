import 'package:flutter/material.dart';

class ValueDisplayWidget extends StatelessWidget {
  final String title;
  final String value;
  const ValueDisplayWidget({Key? key, this.title = "", this.value = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(value),
          ],
        ),
      ),
    );
  }
}
