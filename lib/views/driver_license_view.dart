import 'package:flutter/material.dart';
import 'package:rentv/views/dashboard_view.dart';
import 'package:rentv/widgets/custom_button.dart';

class DriverLicenseView extends StatefulWidget {
  const DriverLicenseView({super.key});

  @override
  State<DriverLicenseView> createState() => _DriverLicenseViewState();
}

class _DriverLicenseViewState extends State<DriverLicenseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('License'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const DashboardView()),
                (route) => false, // Remove all routes from the stack
              );
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Front Side',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Upload',
                        //style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                //!Place Holder For the front Image
                SizedBox(
                  height: 200,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Back Side',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Upload',
                        //style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                //!Place Holder For the back Image
                SizedBox(
                  height: 200,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardView()),
                        (route) => false, // Remove all routes from the stack
                      );
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
