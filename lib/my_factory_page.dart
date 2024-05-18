// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oil_palm_factories/invitation.dart';

class MyFactoryPage extends StatefulWidget {
  const MyFactoryPage({super.key});

  @override
  State<MyFactoryPage> createState() => _MyFactoryPageState();
}

class _MyFactoryPageState extends State<MyFactoryPage> {
  int currentIndex = 1;
  int factory = 0;
  String appBarTitle = 'Factory 1'; // have better solution on not to delcare 1?
  int currentFactoryNumber = 1; // can alter all to this
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
          appBarTitle,
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
                                                  MaterialStatePropertyAll(
                                                      Colors.purple.shade100),
                                              shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      8),
                                              shadowColor:
                                                  const MaterialStatePropertyAll(
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
                                                  MaterialStateProperty.all<
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
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        factoryButton(1),
                        factoryButton(2),
                        factoryButton(3), // a bit redundance
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

  Widget factoryButton(int factoryNumber) {
    return GestureDetector(
      onTap: () {
        setState(() {
          factory = factoryNumber;
          appBarTitle = 'Factory $factoryNumber';
          currentFactoryNumber = factoryNumber;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.45,
        // height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          boxShadow: factory == factoryNumber
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
              'Factory $factoryNumber',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}

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
