import 'package:flutter/material.dart';
import 'package:rentv/views/driver_license_view.dart';
import 'package:rentv/widgets/custom_text_button.dart';

import '../widgets/custom_button.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Text(
                  "Welcome to RentV",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Name *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Email *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: null,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Age *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Phone Number *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DriverLicenseView()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomTextButton(
                    text: "Cancel",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
