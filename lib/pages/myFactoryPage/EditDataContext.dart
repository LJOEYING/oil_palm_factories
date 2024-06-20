import 'package:flutter/material.dart';
import 'package:oil_palm_factories/widgets/EditData.dart';

class EditDataContext extends StatelessWidget {
  final String data1;
  final String data2;
  final String data3;
  final String data4;

  const EditDataContext(this.data1, this.data2, this.data3, this.data4,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        primary: true,
        children: <Widget>[
          EditData('Steam\nPressure', data1, 'bar'),
          EditData('Steam\nFlow', data2, 'T/H'),
          EditData('Water\nLevel', data3, '%'),
          EditData('Power\nLevel', data4, 'Hz'),
        ],
      ),
    );
  }
}
