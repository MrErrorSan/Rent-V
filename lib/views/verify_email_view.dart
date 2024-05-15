import 'package:flutter/material.dart';
import 'package:rentv/constants/routes.dart';
import 'package:rentv/services/auth/auth_service.dart';
//import 'dart:developer' as devtools show log;

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text(
              'We have sent you the verification email.Please open it to verify your account'),
          const Text(
              'If you have not recieved email yet. Please click the button below'),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text('Resend Email'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute,
                    (route) => false,
              );
            },
            child: const Text('Already Verified? Login here.'),
          ),
        ],
      ),
    );
  }
}
