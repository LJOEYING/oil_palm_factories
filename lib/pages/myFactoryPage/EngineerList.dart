import 'package:flutter/material.dart';

class EngineerList extends StatelessWidget {
  const EngineerList({
    super.key,
    required this.engineers,
    required this.engineerPhoneNo,
  });

  final List<String> engineers;
  final List<String> engineerPhoneNo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: engineers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 17),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(0, 1)),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  tileColor: Colors.white,
                  title: Row(
                    children: [
                      const SizedBox(width: 21.0),
                      Text(
                        engineers[index],
                        style: const TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        engineerPhoneNo[index],
                        style: const TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}