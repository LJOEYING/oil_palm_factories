import 'package:flutter/material.dart';
import 'package:oil_palm_factories/widgets/DataContainer.dart';

class FactoryContext extends StatefulWidget {
  final String contextTitle;
  final String data1;
  final String data2;
  final String data3;
  final String data4;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final Widget timeStamp;

  const FactoryContext(this.contextTitle, this.data1, this.data2, this.data3,
      this.data4, this.img1, this.img2, this.img3, this.img4, this.timeStamp,
      {Key? key})
      : super(key: key);

  @override
  State<FactoryContext> createState() => _FactoryContextState();
}

class _FactoryContextState extends State<FactoryContext> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
          child: Text(
            textAlign: TextAlign.center,
            widget.contextTitle,
            style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            crossAxisSpacing: 8,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            children: <Widget>[
              DataContainer('Steam Pressure', widget.img1, widget.data1, 'bar'),
              DataContainer('Steam Flow', widget.img2, widget.data2, 'T/H'),
              DataContainer('Water Level', widget.img3, widget.data3, '%'),
              DataContainer('Power Frequency', widget.img4, widget.data4, 'Hz'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: widget.timeStamp,
        ),
      ],
    );
  }
}
