import 'package:flutter/material.dart';

class Face extends StatelessWidget {
  final String? emoji;
  final String? text;
  const Face({this.emoji, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          child: TextButton(
            style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: Colors.blue[600],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(20, 20),
                        topRight: Radius.elliptical(20, 20),
                        bottomLeft: Radius.elliptical(20, 20),
                        bottomRight: Radius.elliptical(20, 20)))),
            onPressed: () => {},
            child: Text(
              emoji!,
              style: const TextStyle(fontSize: 26),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text!,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
