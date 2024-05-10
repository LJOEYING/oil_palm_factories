import 'package:flutter/material.dart';
import 'package:oil_palm_factories/my_factory_page.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  var otp = '0';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Enter the activation code you received via SMS.',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  otp = (value.length).toString();
                });
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'OTP',
                hintStyle: const TextStyle(
                  fontSize: 19,
                ),
                counterText: '$otp /6',
                counterStyle: const TextStyle(fontSize: 16),
              ),
              maxLength: 6,
            ),
          ],
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Didn\'t Receive?',
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Tap here',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: const ButtonStyle(elevation: MaterialStatePropertyAll(2)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MyFactoryPage(),
                  ),
                );
              },
              child: const Text(
                'Activate',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
