// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:rentv/constants/routes.dart';
import 'package:rentv/services/auth/auth_exceptions.dart';
import 'package:rentv/services/auth/auth_service.dart';
import '../utilities/show_error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  //Middel man to provide data from text Feild to the button
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _email, //Assign the controler
              decoration: const InputDecoration(
                hintText: 'Enter your Email here',
              ),
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _password, //Assign the controler
              decoration: const InputDecoration(
                hintText: 'Enter your password here',
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            ElevatedButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  await AuthService.firebase().createUser(
                    email: email,
                    password: password,
                  );
                  await AuthService.firebase().sendEmailVerification();
                  Navigator.pushNamed(
                    context,
                    verifyEmailRoute,
                  );
                } on WeakPasswordAuthException {
                  await showErrorDialog(
                    context,
                    'Weak Password (must contain 8 letters , a capital, a digit and a special character)',
                  );
                } on EmailAlreadyInUseAuthException {
                  await showErrorDialog(
                    context,
                    'Email is already in use',
                  );
                } on InvalidEmailAuthException {
                  await showErrorDialog(
                    context,
                    'Invalid Email address',
                  );
                } on GenericAuthException{
                  await showErrorDialog(
                    context,
                    'Registration Failed',
                  );
                }
              },
              child: const Text('Register'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  loginRoute,
                  (route) => false,
                );
              },
              child: const Text('Already registered? Login here.'),
            ),
          ],
        ),
      ),
    );
  }
}
