import 'package:flutter/material.dart';
import 'package:oil_palm_factories/globalVariables/globalVariables.dart';

class FactoryButton extends StatefulWidget {
  final int factoryNumber;

  const FactoryButton({Key? key, required this.factoryNumber})
      : super(key: key);

  @override
  State<FactoryButton> createState() => _FactoryButtonState();
}

class _FactoryButtonState extends State<FactoryButton> {
  // int factoryNum = 0;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   factoryNum = widget.factoryNumber;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentFactoryNumber = widget.factoryNumber;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.45,
        // height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          boxShadow: currentFactoryNumber == widget.factoryNumber
              ? [
                  BoxShadow(
                      color: Colors.blue.shade700.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 1)),
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 3,
                    spreadRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.factory,
                size: 35,
              ),
            ),
            Text(
              'Factory ${widget.factoryNumber}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
