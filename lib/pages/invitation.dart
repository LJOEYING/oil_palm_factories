import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class Invitation extends StatefulWidget {
  const Invitation({super.key});

  @override
  State<Invitation> createState() => InvitationState();
}

class InvitationState extends State<Invitation> {
  Country country = CountryParser.parseCountryCode('MY');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          'Factory 1',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    'Invitation',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Invite users',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Owner\'s Name',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              const TextField(
                key: Key("ownerName"),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: 'Type Here',
                  hintStyle: TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Owner\'s Phone Number',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              //need to onchanged
              TextField(
                key: const Key("phoneNo"),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Text(
                    '${country.flagEmoji} + ${country.phoneCode}',
                    style: const TextStyle(fontSize: 23),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your phone number',
                  hintStyle: const TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 500,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.grey.shade600),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: Colors.purple.shade900),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
