import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:oil_palm_factories/globalVariables/globalVariables.dart';

class ActivationPage extends StatefulWidget {
  const ActivationPage({super.key});

  @override
  State<ActivationPage> createState() => _ActivationPageState();
}

class _ActivationPageState extends State<ActivationPage> {
  Country country = CountryParser.parseCountryCode('MY');
  bool? checkboxListTile = false;
  var phoneNumber = '';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Enter your mobile number to activate your account.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline_rounded),
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
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.black,
                  fillColor: const WidgetStatePropertyAll(Colors.blue),
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                const Text("I agree to the terms & conditions",
                    style: TextStyle(fontSize: 17.0)),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: const ButtonStyle(
                elevation: WidgetStatePropertyAll(2),
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
      ],
    );
  }
}
