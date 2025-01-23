import 'package:flutter/material.dart';

class DividersWord extends StatelessWidget {
  final String text;

  const DividersWord({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.black,
            indent: 27,
            endIndent: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.black,
            endIndent: 27,
            indent: 2,
          ),
        ),
      ],
    );
  }
}
