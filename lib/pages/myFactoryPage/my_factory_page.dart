// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oil_palm_factories/globalVariables/globalVariables.dart';
import 'package:oil_palm_factories/pages/invitation.dart';
import 'package:oil_palm_factories/pages/myFactoryPage/EditDataContext.dart';
import 'package:oil_palm_factories/pages/myFactoryPage/EngineerList.dart';
import 'package:oil_palm_factories/pages/myFactoryPage/FactoryContext.dart';
import 'package:oil_palm_factories/widgets/FactoryButton.dart';

class MyFactoryPage extends StatefulWidget {
  const MyFactoryPage({super.key});

  @override
  State<MyFactoryPage> createState() => _MyFactoryPageState();
}

class _MyFactoryPageState extends State<MyFactoryPage> {
  int currentIndex = 1;
  // String appBarTitle = 'Factory 1'; // have better solution on not to delcare 1?
  List<String> engineers = ['Ben', 'Testing 1', 'Hello'];
  List<String> engineerPhoneNo = [
    '+60109219938',
    '+601234567891',
    '+60123456789'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Factory $currentFactoryNumber",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.60,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: currentIndex == 1
                        ? currentFactoryNumber == 1
                            ? const FactoryContext(
                                '⚠️ABD1234 IS UNREACHABLE !',
                                '0.0',
                                '0.0',
                                '0.0',
                                '0.0',
                                'images/F1.1.png',
                                'images/F1.2.png',
                                'images/F1.3.png',
                                'images/F1.4.png',
                                Text(
                                  '--:--',
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            : currentFactoryNumber == 2
                                ? FactoryContext(
                                    '1549.6kW',
                                    '34.19',
                                    '22.82',
                                    '55.41',
                                    '50.08',
                                    'images/F2.1.png',
                                    'images/F2.2.png',
                                    'images/F2.3.png',
                                    'images/F2.4.png',
                                    Text(
                                      DateFormat('yyyy-MM-dd HH:mm:ss')
                                          .format(DateTime.now()),
                                      style: const TextStyle(fontSize: 21),
                                    ),
                                  )
                                : const FactoryContext(
                                    '⚠️ABD1234 IS UNREACHABLE !',
                                    '0.0',
                                    '0.0',
                                    '0.0',
                                    '0.0',
                                    'images/F1.1.png',
                                    'images/F1.2.png',
                                    'images/F1.3.png',
                                    'images/F1.4.png',
                                    Text(
                                      '--:--',
                                      style: TextStyle(fontSize: 21),
                                    ),
                                  )
                        : currentIndex == 0
                            ? SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      currentFactoryNumber == 1
                                          ? EngineerList(
                                              engineers: engineers,
                                              engineerPhoneNo: engineerPhoneNo)
                                          : currentFactoryNumber == 2
                                              ? const Column()
                                              : const Column(),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(35.0),
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Invitation(),
                                                ),
                                              );
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      Colors.purple.shade100),
                                              shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              elevation:
                                                  const WidgetStatePropertyAll(
                                                      8),
                                              shadowColor:
                                                  const WidgetStatePropertyAll(
                                                      Colors.grey),
                                            ),
                                            icon: const Icon(
                                              Icons.add,
                                              size: 45,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Minimum Threshold',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.info_outline_rounded,
                                            size: 25,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          child: IconButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStateProperty.all<
                                                      Color>(Colors.white),
                                            ),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.edit,
                                              color: Colors.purple.shade700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    currentFactoryNumber == 1
                                        ? const EditDataContext(
                                            '29', '22', '53', '48')
                                        : currentFactoryNumber == 2
                                            ? const EditDataContext(
                                                '30', '45', '60', '22')
                                            : const EditDataContext(
                                                '55', '68', '23', '32')
                                  ],
                                ),
                              ),
                  ),
                ],
              ),
              const Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FactoryButton(factoryNumber: 1),
                        FactoryButton(factoryNumber: 2),
                        FactoryButton(factoryNumber: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: '',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
