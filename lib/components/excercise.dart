import 'package:flutter/material.dart';

class Excercise extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Color iconBackgroundColor;

  const Excercise(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.iconBackgroundColor,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
      child: (Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child:
                      Padding(padding: const EdgeInsets.all(15.0), child: icon),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ]),
        ),
      )),
    );
  }
}
