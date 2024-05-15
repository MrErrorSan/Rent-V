// ignore_for_file: use_build_context_synchronously
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rentv/constants/routes.dart';
import 'package:rentv/services/auth/auth_service.dart';
import 'package:rentv/views/login_view.dart';
import 'package:rentv/views/notes_view.dart';
import 'package:rentv/views/phone_number_view.dart';
import 'package:rentv/views/register_view.dart';
import 'package:rentv/views/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Run firebase before app
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        notesRoute: (context) => const NotesView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
                //print('user is verified');
                return const NotesView();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const PhoneNumberView();
            }
          //return const Text('done');
          default:
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.brown,
                    Colors.brown.shade300,
                    Colors.brown
                  ], transform: const GradientRotation(pi / 2)),
                ),
                child: const Center(
                  child: Text(
                    "RENTV",
                    style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                        fontFamily: AutofillHints.birthday,
                        color: Colors.white),
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
