import 'package:flutter/material.dart';

class FruitCardCustom extends StatelessWidget {
  final String title;

  const FruitCardCustom({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("appuie sur "+title);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Text(title),
          ),
          width: 131,
          height: 148,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            color: Color(0xffF6F5F4),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
