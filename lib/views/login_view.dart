
import 'package:flutter/material.dart';
import 'package:rentv/constants/routes.dart';
import 'package:rentv/services/auth/auth_exceptions.dart';
import 'package:rentv/services/auth/auth_service.dart';
import '../utilities/show_error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
      appBar: AppBar(title: const Text('Login')),
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
                  await AuthService.firebase().logIn(
                    email: email,
                    password: password,
                  );
                  final user = AuthService.firebase().currentUser;
                  if (user?.isEmailVerified ?? false) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      notesRoute,
                      (route) => false,  
                    );
                  } else {
                    Navigator.of(context).pushNamed(
                      verifyEmailRoute,
                    );
                  }
                }on UserNotFoundAuthException{
                   await showErrorDialog(
                    context,
                    'User Not Found',
                  );
                }on WrongPasswordAuthException {
                  await showErrorDialog(
                    context,
                    'Invalid Credentials',
                  );
                }on GenericAuthException{
                  await showErrorDialog(
                    context,
                    'Authentication Failed',
                  );
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                  (route) => false,
                );
              },
              child: const Text('Not Registered yet? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
