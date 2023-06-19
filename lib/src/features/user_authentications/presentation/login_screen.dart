import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../constants/app_language.dart' as app_language;
import '../../../routing/route.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

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
                app_language.Authentication.appTitle,
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
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Perform login action
                },
                child: Text(app_language.Authentication.loginBtnLabel),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.go(RoutePath.forgotPassword);
                    },
                    child:
                        Text(app_language.Authentication.forgotPasswordLabel),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                app_language.Authentication.signInWithLabel,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Perform Google sign-in action
                    },
                    icon: const Icon(Icons.login),
                    label: Text(app_language.Authentication.googleLabel),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Perform Facebook sign-in action
                    },
                    icon: const Icon(Icons.login),
                    label: Text(
                      app_language.Authentication.facebookLabel,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  context.go(RoutePath.register);
                },
                child: Text(app_language.Authentication.createAccountLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
