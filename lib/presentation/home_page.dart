import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp phoneRegExp = RegExp(r'^[0-9]{10}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Unknown Number Launcher'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (String? value) {
                    if (value == null ||
                        value.isEmpty ||
                        phoneRegExp.hasMatch(value) == false) {
                      return 'Please enter a phone number';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                  ),
                  controller: _phoneNumberController,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      launchUrl(
                        Uri.parse(
                            'https://wa.me/+91${_phoneNumberController.text}'),
                      );
                    }
                  },
                  child: const Text('Open Whatsapp'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
