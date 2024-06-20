import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditData extends StatelessWidget {
  String editDataTitle;
  String editData;
  String editDataUnit;

  EditData(this.editDataTitle, this.editData, this.editDataUnit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Text(
            editDataTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Text(
                    editData,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  height: 56,
                  width: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Text(
                    editDataUnit,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
