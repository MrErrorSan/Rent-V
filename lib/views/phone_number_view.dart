import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:rentv/views/otp_view.dart';
import 'package:rentv/widgets/custom_button.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
    phoneCode: "92",
    countryCode: "PK",
    name: 'Pakistan',
    displayName: 'Pakistan',
    displayNameNoCountryCode: 'PK',
    e164Key: '',
    e164Sc: 0,
    example: 'Pakistan',
    geographic: true,
    level: 1,
  );
  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              const Text(
                "SignUp",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enter Your Phone Number",
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
              TextFormField(
                controller: phoneController,
                cursorColor: Colors.orange,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (value) {
                  setState(() {
                    phoneController.text = value;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Phone Number',
                  //hintText: "Enter Phone Number",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                  // enabledBorder: const OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(10.0),
                  //   ),
                  // ),
                  // focusedBorder: const OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(10.0),
                  //   ),
                  //),
                  // prefixIcon: Container(
                  //   padding: const EdgeInsets.all(8.0),
                  //   margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                  //   child: InkWell(
                  //     onTap: () {
                  //       showCountryPicker(
                  //         context: context,
                  //         countryListTheme: CountryListThemeData(
                  //           bottomSheetHeight: 550,
                  //           borderRadius: BorderRadius.circular(20),
                  //           //backgroundColor: Colors.white,
                  //         ),
                  //         showSearch: true,
                  //         onSelect: (value) {
                  //           setState(() {
                  //             selectedCountry = value;
                  //           });
                  //         },
                  //       );
                  //     },
                  //     child: Text(
                  //       "${selectedCountry.flagEmoji}  +${selectedCountry.phoneCode}",
                  //       style: const TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // suffixIcon: phoneController.text.length > 9
                  //     ? Container(
                  //         margin: const EdgeInsets.all(5),
                  //         width: 20,
                  //         height: 20,
                  //         decoration: const BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           color: Colors.green,
                  //         ),
                  //         child: Icon(
                  //           Icons.done,
                  //           color: Colors.white,
                  //           size: 20,
                  //         ),
                  //       )
                  //     : null,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OtpView()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
