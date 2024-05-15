import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rentv/views/details_view.dart';
import 'package:rentv/widgets/custom_button.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
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
                "Verification",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enter Verification Code",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 30,
                width: 20,
              ),
              Pinput(
                length: 6,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //border: Border.all(color: Colors.brown),
                    color: Colors.brown.shade100,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onSubmitted: (value) {
                  setState(() {
                    otpCode = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  text: "Verify",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailsView()));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Does not receive verification code?"),
              TextButton(onPressed: () {}, child: const Text("Resend Code"))
            ],
          ),
        ),
      ),
    );
  }
}
