import 'package:flutter/material.dart';
import 'package:oil_palm_factories/globalVariables/globalVariables.dart';
import 'package:oil_palm_factories/pages/authentication/ActivationPage.dart';
import 'package:oil_palm_factories/pages/authentication/otp.dart';

class AccActivationPage extends StatefulWidget {
  const AccActivationPage({super.key});

  @override
  State<AccActivationPage> createState() => AccActivationPageState();
}

class AccActivationPageState extends State<AccActivationPage> {
  // bool getActivation = false;

  var otp = '0';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome !',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                  ),
                  Container(
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
                          ? const ActivationPage()
                          : const Otp(),
                    ),
                  ),
                ],
              ),
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
