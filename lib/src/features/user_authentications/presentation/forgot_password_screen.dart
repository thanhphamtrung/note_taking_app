import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../constants/app_language.dart' as app_language;
import '../../../routing/route.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                app_language.Authentication.forgotPasswordLabel,
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
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Perform forgot password action
                },
                child: Text(app_language.Authentication.resetPasswordBtnLabel),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  context.go(RoutePath.login);
                },
                child: Text(app_language.Authentication.backToLoginLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
