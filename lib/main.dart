import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:oil_palm_factories/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Oil Palm Industries',
      debugShowCheckedModeBanner: false,
      home: AccActivationPage(),
    );
  }
}

class AccActivationPage extends StatefulWidget {
  const AccActivationPage({super.key});

  @override
  State<AccActivationPage> createState() => AccActivationPageState();
}

class AccActivationPageState extends State<AccActivationPage> {
  Country country = CountryParser.parseCountryCode('MY');
  bool? checkboxListTile = false;
  bool getActivation = false;
  var phoneNumber = '';
  var otp = '0';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      width: 200,
                      height: 100,
                      image: AssetImage('images/UPMLogo.jpg'),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome !',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 2,
                            offset: const Offset(0, 3)),
                      ],
                      color: getActivation == false
                          ? const Color(0xfff9e2e3)
                          : Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                      child: getActivation == false
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Expanded(
                                          child: Text(
                                            'Enter your mobile number to activate your account.',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.info_outline_rounded),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 50),
                                    TextField(
                                      onChanged: (value) {
                                        phoneNumber = value;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        icon: Text(
                                          '${country.flagEmoji} + ${country.phoneCode}',
                                          style: const TextStyle(fontSize: 19),
                                        ),
                                        border: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),

                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.black,
                                          fillColor:
                                              const MaterialStatePropertyAll(
                                                  Colors.blue),
                                          value: isChecked,
                                          onChanged: (bool? newValue) {
                                            setState(() {
                                              isChecked = newValue!;
                                            });
                                          },
                                          visualDensity: VisualDensity
                                              .adaptivePlatformDensity,
                                        ),
                                        const Text(
                                            "I agree to the terms & conditions",
                                            style: TextStyle(fontSize: 17.0)),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    ElevatedButton(
                                      style: const ButtonStyle(
                                        elevation: MaterialStatePropertyAll(2),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          getActivation = true;
                                        });
                                      },
                                      child: const Text(
                                        'Get Activation Code',
                                        style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // CheckboxListTile(
                                //   title: const Text(
                                //       "I agree to the terms & conditions"),
                                //   checkColor: Colors.black,
                                //   fillColor:
                                //       const MaterialStatePropertyAll(Colors.blue),
                                //   value: checkboxListTile,
                                //   onChanged: (val) {
                                //     setState(() {
                                //       checkboxListTile = val;
                                //     });
                                //   },
                                //   controlAffinity:
                                //       ListTileControlAffinity.leading,
                                // ),
                              ],
                            )
                          : const Otp(),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 40.0,
              // ),
              Column(
                children: [
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Disclaimer | Privacy Statement',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
