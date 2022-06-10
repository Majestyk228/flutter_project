import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevCard extends StatelessWidget {
  Image image;
  String pseudo;

  DevCard({Key? key, required this.image, required this.pseudo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(top: 17),
              child: Container(
                height: 85,
                width: 93,
                child: image,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              pseudo,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        width: 131,
        height: 178,
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
    );
  }
}