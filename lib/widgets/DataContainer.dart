import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final String dataTitle;
  final String image;
  final String data;
  final String dataUnit;

  const DataContainer(this.dataTitle, this.image, this.data, this.dataUnit,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                dataTitle,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0),
                  ),
                  Text(
                    dataUnit,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
