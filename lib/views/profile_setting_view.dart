import 'package:flutter/material.dart';
import 'package:rentv/views/phone_number_view.dart';
import 'package:rentv/views/profile_view.dart';
import 'package:rentv/widgets/custom_button.dart';

class ProfileSettingView extends StatefulWidget {
  const ProfileSettingView({super.key});

  @override
  State<ProfileSettingView> createState() => _ProfileSettingViewState();
}

class _ProfileSettingViewState extends State<ProfileSettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown,
          title: const Text('Profile Settings'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 30,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const ProfileView()),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown,
                        ),
                        child: const Icon(
                          Icons.account_circle_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown,
                        ),
                        child: const Icon(
                          Icons.privacy_tip_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown,
                        ),
                        child: const Icon(
                          Icons.block_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Blocked Users",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown,
                        ),
                        child: const Icon(
                          Icons.question_answer,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "FAQ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown,
                        ),
                        child: const Icon(
                          Icons.info_outline,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "About Us",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                CustomButton(
                    text: "Sign Out",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneNumberView()),
                        (route) => false, // Remove all routes from the stack
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
