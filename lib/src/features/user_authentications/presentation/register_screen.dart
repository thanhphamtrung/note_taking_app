import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../constants/app_language.dart' as app_language;
import '../../../routing/route.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                app_language.Authentication.createAccountLabel,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              TextField(
                decoration: InputDecoration(
                  labelText: app_language.Authentication.email,
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: app_language.Authentication.password,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: app_language.Authentication.confirmPassword,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Perform registration action
                },
                child: Text(app_language.Authentication.signUpBtnLabel),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  context.go(RoutePath.login);
                },
                child: Text(app_language.Authentication.redirectToLoginLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
