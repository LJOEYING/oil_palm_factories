// Padding(
//                   padding: const EdgeInsets.fromLTRB(3, 10, 3, 3),
//                   child: currentIndex == 0
//                       ? Column(
//                         children: [
//                       currentFactoryIndex == 1
//                           ? Column(
//                               children: [
//                                 Expanded(
//                                   child: ListView.separated(
//                                     padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
//                                     itemCount: entries.length,
//                                     itemBuilder: (context, index) {
//                                       return Container(
//                                         decoration: BoxDecoration(
//                                             color:const Color.fromRGBO(254, 255, 254, 1),
//                                             borderRadius:BorderRadius.circular(10),
//                                             boxShadow: [
//                                               BoxShadow(color: Colors.grey.withOpacity(0.5),
//                                                   spreadRadius: 5,
//                                                   blurRadius: 7,
//                                                   offset:const Offset(0, 3))
//                                             ]),
//                                         height:
//                                             MediaQuery.of(context).size.height *0.11,
//                                         child: SingleChildScrollView(
//                                           child: Column(
//                                             crossAxisAlignment:CrossAxisAlignment.start,
//                                             mainAxisAlignment:MainAxisAlignment.end,
//                                             children: [
//                                               Padding(
//                                                 padding: const EdgeInsets.only(left: 30),
//                                                 child:
//                                                  Text(
//                                                   entries[index],
//                                                   style: const TextStyle(fontSize: 25,
//                                                   ),
//                                                 ),
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   const SizedBox(width: 10,),
//                                                   Container(
//                                                     height: 10,
//                                                     width: 10,
//                                                     decoration: BoxDecoration(
//                                                       borderRadius:BorderRadius.circular(20),
//                                                       color:const Color.fromRGBO(168, 169, 169, 1),
//                                                     ),
//                                                   ),
//                                                  const SizedBox(width: 10,),
//                                                   Text(
//                                                     telNum[index],
//                                                     style: const TextStyle(
//                                                     fontSize: 25,
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                     separatorBuilder:(BuildContext context, int index) {
//                                       return const SizedBox(height: 20,);
//                                     },
//                                   ),
//                                 ),
                                
//                               ],
//                             )
//                           : const Column(),
//                           Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(right: 10, bottom: 10),
//                                       child: ElevatedButton(
//                                         onPressed: () {
//                                           Navigator.of(context).push(
//                                             MaterialPageRoute(builder: (context) =>const Invitation(currentFactoryIndex: 1,),
//                                             ),
//                                           );
//                                         },
//                                         style: ElevatedButton.styleFrom(
//                                             fixedSize: const Size(60, 60),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:BorderRadius.circular(15),
//                                             ),
//                                             backgroundColor: const Color.fromRGBO(223, 220, 254, 1)),
//                                         child: 
//                                         const Text('+',
//                                           style: TextStyle(fontSize: 30),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 )])
//                       : currentIndex == 1
//                               ?currentFactoryIndex==2
//                               ?FactoryInformation('1549.7kW','34.19','22.82','55.41','50.08','images/data1.png','images/data2.png','images/data3.png','images/data4.png',DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()))
//                               :const FactoryInformation('⚠️ABD1234 IS UNREACHABLE !','0.0','0.0','0.0','0.0','images/data1.png','images/data2.png','images/data3.png','images/data4.png','--:--')

//                           //setting page
//                         : currentFactoryIndex == 1
//                               ? Padding(
//                                   padding:const EdgeInsets.fromLTRB(10, 25, 10, 0),
//                                   child: Column(
//                                     children: [
//                                       Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           const Text(
//                                             'Minimum Threshold',
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.w900,
//                                               fontSize: 22.5,
//                                             ),
//                                           ),
//                                           IconButton(
//                                             onPressed: () {},
//                                             icon: const Icon(
//                                                 Icons.info_outline_rounded),
//                                           ),
//                                           ElevatedButton(
//                                             onPressed: () {},
//                                             style: ElevatedButton.styleFrom(
//                                                 fixedSize: const Size(70, 50),
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius:BorderRadius.circular(30),
//                                                 ),
//                                                 backgroundColor: const Color.fromRGBO(247, 241, 249, 1)),
//                                             child: const Icon(
//                                               Icons.edit,
//                                               size: 30,
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                       Expanded(
//                                         child: GridView.count(
//                                           crossAxisCount: 2,
//                                           crossAxisSpacing: 15,
//                                           mainAxisSpacing: 5,
//                                           children: [
//                                             buildThresholdData('Steam\nPressure','29','bar'),
//                                             buildThresholdData('Steam\nFlow','22','T/H'),
//                                             buildThresholdData('Water\nLevel','53','%'),
//                                             buildThresholdData('Power\nFrequency','48','Hz'),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                                 : const Column(),
//                 ),